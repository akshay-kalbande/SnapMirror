part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    final UserEntity? user,
    @Default([]) final List<PostEntity> posts,
    final Object? nextPageToken,
    final ScreenMessage? message,
    @Default(false) bool isLoading,
    @Default(false) bool fetchingMore,
    @Default(false) bool isLastPage,
  }) = _ProfileState;
}
