part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const ProfileEvent._();
  const factory ProfileEvent.started(final UserEntity user) = _Started;
  const factory ProfileEvent.updated(final UserEntity user) = _Updated;
  const factory ProfileEvent.startedWithUserID(final String userID) =
      _StartedWithUserID;
  const factory ProfileEvent.fetchMorePosts(final UserEntity user) =
      _FetchMorePosts;
  const factory ProfileEvent.editProfileClicked() = _EditProfileClicked;
  const factory ProfileEvent.unfollow(final UserEntity following) = _Unfollow;
  const factory ProfileEvent.follow(final UserEntity following) = _Follow;
}
