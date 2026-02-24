part of 'following_list_bloc.dart';

@freezed
sealed class FollowingListState with _$FollowingListState {
  const FollowingListState._();
  const factory FollowingListState({
    @Default(false) final bool isLoading,
    final UserEntity? user,
    @Default([]) final List<UserEntity> followings,
    final ScreenMessage? notification,
  }) = _FollowingListState;
}
