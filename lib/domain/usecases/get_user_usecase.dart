import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';
import '../repositories/user_repository.dart';

class GetUserUsecase implements Usecase<UserEntity, String> {
  final AuthRepository authRepository;

  const GetUserUsecase(this.authRepository);
  @override
  Future<Either<Failure, UserEntity>> call(String params) async {
    return await authRepository.getUser(params);
  }
}
