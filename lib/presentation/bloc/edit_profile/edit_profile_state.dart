part of 'edit_profile_bloc.dart';

@freezed
sealed class EditProfileState with _$EditProfileState {
  const factory EditProfileState._({
    required final UserEntity user,
    @Default(false) bool isLoading,
    ScreenMessage? message,
  }) = _EditProfileState;
}
