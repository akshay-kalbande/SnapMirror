part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({
    required final UserEntity user,
    @Default(false) bool authLoading,
  }) = _Authenticated;
  const factory AuthState.unauthenticated({
    @Default(false) bool loading,
    String? error,
  }) = _Unauthenticated;
}
