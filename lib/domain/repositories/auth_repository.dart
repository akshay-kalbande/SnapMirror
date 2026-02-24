import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/user_entity.dart';
import '../usecases/login_user_usecase.dart';

abstract class AuthRepository {
  Stream<String?> get authStream;
  Future<Either<Failure, UserEntity>> getUser(final String userID);
  Future<Either<Failure, UserEntity>> loginUser(final LoginParams params);
  Future<Either<Failure, void>> logoutUser();
  Future<Either<Failure, String>> createUser(
    final String email,
    final String password,
  );
}
