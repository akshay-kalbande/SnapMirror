import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../common/converters/page_result_string_converter.dart';
import '../../../common/page_result.dart';
import '../../../core/app_service.dart';
import '../../../domain/entities/page_request_entity.dart';
import '../../../domain/entities/post_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_following_feed_usecase.dart';
import '../../../common/messages/screen_message.dart';

part 'following_feed_event.dart';
part 'following_feed_state.dart';

part 'following_feed_bloc.freezed.dart';
part 'following_feed_bloc.g.dart';

class FollowingFeedBloc
    extends HydratedBloc<FollowingFeedEvent, FollowingFeedState> {
  final UserEntity user;
  final GetFollowingFeedUsecase _getFollowingFeedUsecase;
  FollowingFeedBloc(this._getFollowingFeedUsecase, {required this.user})
    : super(const FollowingFeedState()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_FetchMore>(_onFetchMore);
    on<_NewPostAdded>(_onNewPostAdded);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FollowingFeedState> emit,
  ) async {
    //TODO: fetch periodically. ie check last fetched time and then only fetch.
    emit(state.copyWith(isLoading: true));
    emit(await _fetchFeed());
  }

  Future<FollowingFeedState> _fetchFeed() async {
    PageResult<String> currRes = state.posts ?? PageResult(items: []);
    final feedRes = await _getFollowingFeedUsecase(
      PageRequestEntity(
        uid: AppService.instance.user.uid,
        nextPageToken: currRes.nextPageToken,
        sortBy: 'datePublished',
        pageSize: 15,
        isEqualToFieldMap: {},
      ),
    );
    return feedRes.fold(
      (l) => FollowingFeedState(
        posts: currRes.copyWith(fetchingMore: false),
        message: ScreenMessage(
          content: l.message,
          timestamp: DateTime.now(),
          isError: true,
        ),
      ),
      (r) async {
        final currentItems = currRes.items;
        print('Fetched posts: ${r.items}');
        return FollowingFeedState(
          posts: PageResult.fromEntity(r).copyWith(
            items: <String>{...currentItems, ...r.items}.toList(),
            fetchingMore: false,
          ),
        );
      },
    );
  }

  FutureOr<void> _onFetchMore(
    _FetchMore event,
    Emitter<FollowingFeedState> emit,
  ) async {
    if (state.posts == null) return;
    if (!state.posts!.fetchingMore) {
      emit(
        FollowingFeedState(posts: state.posts!.copyWith(fetchingMore: true)),
      );
    }
    emit(await _fetchFeed());
  }

  @override
  FollowingFeedState? fromJson(Map<String, dynamic> json) {
    try {
      return FollowingFeedState.fromJson(json);
    } catch (e) {
      debugPrint('Failed to get following bloc state from storage');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(FollowingFeedState state) {
    try {
      return state.toJson();
    } catch (e) {
      debugPrint('Failed to save following bloc state to storage');
      return null;
    }
  }

  FutureOr<void> _onRefreshed(
    _Refreshed event,
    Emitter<FollowingFeedState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, posts: null));
    emit(await _fetchFeed());
  }

  FutureOr<void> _onNewPostAdded(
    _NewPostAdded event,
    Emitter<FollowingFeedState> emit,
  ) async {
    if (state.isLoading || state.posts == null) return;
    emit(
      state.copyWith(
        posts: state.posts!.copyWith(
          items: [event.post.postId, ...state.posts!.items],
        ),
      ),
    );
  }
}
