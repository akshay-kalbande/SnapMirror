import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/failures/failure.dart';
import '../../core/failures/validation_failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUserUsecase implements Usecase<UserEntity, LoginParams> {
  final AuthRepository _authRepository;

  LoginUserUsecase(this._authRepository);
  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) async {
    if (params.email.isEmpty || params.password.isEmpty) {
      return Left(
        ValidationFailure.invalid(reason: 'Email and password is required!'),
      );
    }
    return _authRepository.loginUser(params);
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
