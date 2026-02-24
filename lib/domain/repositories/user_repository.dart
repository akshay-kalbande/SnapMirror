import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/file_upload_result_entity.dart';
import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> registerUser(final UserEntity user);
  Future<Either<Failure, UserEntity>> updateUser(final UserEntity user);
  Future<Either<Failure, List<UserEntity>>> searchUser(final String text);
  Future<Either<Failure, void>> deleteUser(final UserEntity user);
  Stream<Either<Failure, FileUploadResultEntity>> uploadProfilePhoto(
    final Uint8List file,
    final String userID,
  );
}
