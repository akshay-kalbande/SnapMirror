part of 'explore_feed_bloc.dart';

@freezed
sealed class ExploreFeedState with _$ExploreFeedState {
  const factory ExploreFeedState({
    @Default(false) bool isLoading,
    @PageResultStringConverter() PageResult<PostEntity>? posts,
    ScreenMessage? message,
  }) = _FollowingFeedState;
}
