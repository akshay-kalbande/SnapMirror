part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.usernameChanged(final String value) =
      _UsernameChanged;
  const factory RegisterEvent.emailChanged(final String value) = _EmailChanged;
  const factory RegisterEvent.passwordChanged(final String value) =
      _PasswordChanged;
  const factory RegisterEvent.bioChanged(final String value) = _BioChanged;
  const factory RegisterEvent.imageChanged(final XFile? image) = _ImageChanged;
  const factory RegisterEvent.submitted({
    required final String username,
    required final String email,
    required final String bio,
    required final String password,
  }) = _Submitted;
}
