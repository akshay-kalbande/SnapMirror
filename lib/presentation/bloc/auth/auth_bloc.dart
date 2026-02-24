import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/app_service.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_user_usecase.dart';
import '../../../domain/usecases/login_user_usecase.dart';
import '../../../domain/usecases/logout_user_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetUserUsecase _getUserUsecase;
  final LoginUserUsecase _loginUserUsecase;
  final LogoutUserUsecase _logoutUserUsecase;
  late final StreamSubscription<String?> _streamSubscription;
  AuthBloc(
    this._getUserUsecase,
    this._loginUserUsecase,
    this._logoutUserUsecase,
  ) : super(const AuthState.initial()) {
    on<_StatusChecked>(_onStatusChecked);
    on<_Login>(_onLogin);
    on<_Logout>(_onLogout);
    _streamSubscription = _getUserUsecase.authStream.asBroadcastStream().listen(
      (event) => add(AuthEvent.statusChecked(event)),
    );
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onStatusChecked(
    _StatusChecked event,
    Emitter<AuthState> emit,
  ) async {
    print('------------- Status changed -------------');
    // return;
    // emit(
    //   state.map(
    //     authenticated: (value) => value.copyWith(authLoading: true),
    //     unauthenticated: (value) => value.copyWith(loading: true),
    //   ),
    // );
    if (event.userID == null) {
      if (state.mapOrNull(
            authenticated: (value) => true,
            initial: (value) => true,
          ) ??
          false) {
        emit(AuthState.unauthenticated());
      }
    } else {
      (await _getUserUsecase(event.userID!)).fold(
        (l) => emit(AuthState.unauthenticated()),
        (r) {
          AppService.instance.user = r;
          emit(AuthState.authenticated(user: r));
        },
      );
    }
  }

  FutureOr<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(AuthState.unauthenticated(loading: true));
    (await _loginUserUsecase(LoginParams(event.username, event.password))).fold(
      (l) => emit(AuthState.unauthenticated(error: l.message)),
      (r) {
        AppService.instance.user = r;
        emit(AuthState.authenticated(user: r));
      },
    );
  }

  FutureOr<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    UserEntity? user = state.whenOrNull(
      authenticated: (user, authChecking) => user,
    );
    if (user == null) return;
    emit(AuthState.authenticated(user: user, authLoading: true));
    await Future.delayed(const Duration(milliseconds: 300));
    (await _logoutUserUsecase(
      NoParams(),
    )).fold((l) => null, (r) => AuthState.unauthenticated());
  }
}
