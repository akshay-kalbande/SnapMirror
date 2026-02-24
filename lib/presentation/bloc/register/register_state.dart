part of 'register_bloc.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState({
    @Default(UsernameInput.pure()) UsernameInput username,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PasswordInput.pure()) PasswordInput password,
    @Default(BioInput.pure()) BioInput bio,
    @Default(ProfilePhoto.pure()) ProfilePhoto photo,
    required final GlobalKey<FormState> formKey,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    RegistrationStatusEntity? regStatus,
  }) = _RegisterState;

  bool get isValid => Formz.validate([username, email, password, bio, photo]);
}
