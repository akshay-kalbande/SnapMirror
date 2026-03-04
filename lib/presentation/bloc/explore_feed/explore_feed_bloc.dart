import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/converters/page_result_string_converter.dart';
import '../../../common/messages/screen_message.dart';
import '../../../common/page_result.dart';
import '../../../domain/entities/page_request_entity.dart';
import '../../../domain/entities/post_entity.dart';
import '../../../domain/usecases/get_explore_feed_usecase.dart';

part 'explore_feed_event.dart';
part 'explore_feed_state.dart';
part 'explore_feed_bloc.freezed.dart';

class ExploreFeedBloc extends Bloc<ExploreFeedEvent, ExploreFeedState> {
  final GetExploreFeedUsecase getExploreFeedUsecase;
  ExploreFeedBloc(this.getExploreFeedUsecase)
    : super(const ExploreFeedState()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_FetchMore>(_onFetchMore);
  }
  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ExploreFeedState> emit,
  ) async {
    emit(await _fetchFeed());
  }

  FutureOr<void> _onRefreshed(
    _Refreshed event,
    Emitter<ExploreFeedState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, posts: null));
    emit(await _fetchFeed());
  }

  FutureOr<void> _onFetchMore(
    _FetchMore event,
    Emitter<ExploreFeedState> emit,
  ) async {
    if (state.posts == null) return;
    if (!state.posts!.fetchingMore) {
      emit(state.copyWith(posts: state.posts!.copyWith(fetchingMore: true)));
    }
    emit(await _fetchFeed());
  }

  Future<ExploreFeedState> _fetchFeed() async {
    final res = await getExploreFeedUsecase(
      PageRequestEntity(
        nextPageToken: state.posts?.nextPageToken,
        sortBy: 'datePublished',
        pageSize: 25,
        isEqualToFieldMap: {},
      ),
    );
    return res.fold(
      (l) {
        return state.copyWith(
          isLoading: false,
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        );
      },
      (r) {
        final currentItems = state.posts?.items ?? [];
        return state.copyWith(
          isLoading: false,
          message: null,
          posts: PageResult(
            items: [...currentItems, ...r.items],
            nextPageToken: r.nextPageToken,
            isLastPage: r.isLastPage,
            totalItemCount: r.totalItemCount,
          ),
        );
      },
    );
  }
}
