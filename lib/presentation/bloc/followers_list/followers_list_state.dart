part of 'followers_list_bloc.dart';

@freezed
sealed class FollowersListState with _$FollowersListState {
  const FollowersListState._();
  const factory FollowersListState({
    @Default(false) final bool isLoading,
    final UserEntity? user,
    @Default([]) final List<UserEntity> followers,
    final ScreenMessage? notification,
  }) = _FollowersListState;
}
