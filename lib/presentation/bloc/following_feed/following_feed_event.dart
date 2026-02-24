part of 'following_feed_bloc.dart';

@freezed
sealed class FollowingFeedEvent with _$FollowingFeedEvent {
  const factory FollowingFeedEvent.started() = _Started;
  const factory FollowingFeedEvent.refreshed() = _Refreshed;
  const factory FollowingFeedEvent.fetchMore() = _FetchMore;
  const factory FollowingFeedEvent.postLiked({
    required final String userID,
    required final String postID,
  }) = _PostLiked;
  const factory FollowingFeedEvent.newPostAdded(final PostEntity post) =
      _NewPostAdded;
}
