part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.statusChecked(final String? userID) = _StatusChecked;
  const factory AuthEvent.login(final String username, final String password) =
      _Login;
  const factory AuthEvent.logout() = _Logout;
}
