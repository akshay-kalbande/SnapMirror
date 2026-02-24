import 'dart:async';

import 'package:dartz/dartz.dart';
import '../../core/app_exceptions/exception.dart';
import '../../core/failures/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login_user_usecase.dart';
import '../data_sources/remote_data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Stream<String?> get authStream => _remoteDataSource.authStream;

  @override
  Future<Either<Failure, UserEntity>> getUser(String userID) async {
    try {
      return Right((await _remoteDataSource.getUser(userID)).entity);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginUser(LoginParams params) async {
    try {
      return Right(
        (await _remoteDataSource.loginUser(
          email: params.email,
          password: params.password,
        )).entity,
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logoutUser() async {
    try {
      await _remoteDataSource.logoutUser();
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> createUser(
    final String email,
    final String password,
  ) async {
    try {
      final id = await _remoteDataSource.createUser(email, password);
      return Right(id);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
