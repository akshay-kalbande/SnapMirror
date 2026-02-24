part of 'following_list_bloc.dart';

@freezed
sealed class FollowingListEvent with _$FollowingListEvent {
  const FollowingListEvent._();
  const factory FollowingListEvent.started(final UserEntity user) = _Started;
  const factory FollowingListEvent.startedWithUserID(final String userID) =
      _StartedWithUserID;
  const factory FollowingListEvent.unfollowButtonClicked(
    final UserEntity user,
    final UserEntity following,
  ) = _UnfollowButtonClicked;
}
