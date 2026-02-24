import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class GetUserUsecase implements Usecase<UserEntity, String> {
  final AuthRepository _authRepository;
  final bool isWindowsDesktop;
  late final Stream<String?> authStream;

  GetUserUsecase(this._authRepository, this.isWindowsDesktop) {
    if (isWindowsDesktop) {
      authStream = _authRepository.authStream.skip(1);
    } else {
      authStream = _authRepository.authStream;
    }
  }
  @override
  Future<Either<Failure, UserEntity>> call(String params) async {
    return _authRepository.getUser(params);
  }
}
