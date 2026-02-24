part of 'followers_list_bloc.dart';

@freezed
sealed class FollowersListEvent with _$FollowersListEvent {
  const FollowersListEvent._();
  const factory FollowersListEvent.started(final UserEntity user) = _Started;
  const factory FollowersListEvent.startedWithUserID(final String userID) =
      _StartedWithUserID;
  const factory FollowersListEvent.removeFollowerClicked(
    final UserEntity user,
    final UserEntity follower,
  ) = _RemoveFollowerClicked;
}
