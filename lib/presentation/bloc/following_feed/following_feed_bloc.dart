import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../common/converters/page_result_string_converter.dart';
import '../../../common/page_result.dart';
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
        return FollowingFeedState(
          posts: PageResult.fromEntity(r).copyWith(
            items: [...currRes.items, ...r.items],
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
      print('Failed to get following bloc state from storage');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(FollowingFeedState state) {
    try {
      return state.toJson();
    } catch (e) {
      print('Failed to save following bloc state to storage');
      return null;
    }
  }

  FutureOr<void> _onRefreshed(
    _Refreshed event,
    Emitter<FollowingFeedState> emit,
  ) {
    //TODO
    add(FollowingFeedEvent.started());
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
