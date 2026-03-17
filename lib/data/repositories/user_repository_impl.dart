import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/app_service.dart';
import '../../core/failures/failure.dart';
import '../../domain/entities/file_upload_result_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/remote_data_sources/file_remote_data_source.dart';
import '../data_sources/remote_data_sources/user_remote_data_source.dart';
import '../models/file_upload_result_model.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource dataSource;
  final FileRemoteDataSource fileRemoteDataSource;
  final Map<String, UserEntity> _users = {};

  UserRepositoryImpl({
    required this.dataSource,
    required this.fileRemoteDataSource,
  });
  @override
  Future<Either<Failure, UserEntity>> registerUser(UserEntity user) async {
    try {
      final res = await dataSource.registerUser(UserModel.fromEntity(user));
      final registeredUser = res.entity;
      _updateUsersCache([registeredUser]);
      return Right(registeredUser);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUser(UserEntity user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  void _updateUsersCache(final List<UserEntity> users) {
    _users.addAll(Map.fromEntries(users.map((e) => MapEntry(e.uid, e))));
  }

  @override
  Future<Either<Failure, UserEntity>> updateUser(UserEntity user) async {
    try {
      final res = await dataSource.updateUser(UserModel.fromEntity(user));
      final updatedUser = res.entity;
      _updateUsersCache([updatedUser]);
      return Right(updatedUser);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Stream<Either<Failure, FileUploadResultEntity>> uploadProfilePhoto(
    Uint8List file,
    final String userID,
  ) {
    return fileRemoteDataSource
        .uploadFile(file, ['ProfilePics', userID])
        .map(
          (event) => event.map(
            started: (value) => Right(value.entity!),
            progress: (value) => Right(value.entity!),
            success: (value) => Right(value.entity!),
            error: (value) => Left(ServerFailure(value.error)),
          ),
        );
  }

  @override
  Future<Either<Failure, List<UserEntity>>> searchUser(String text) async {
    try {
      final res = await dataSource.searchUser(text);
      final users = res.map((e) => e.entity).toList();
      _updateUsersCache(users);
      return right(users);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> searchFollowingUser(
    String text,
    final UserEntity user,
  ) async {
    try {
      final res = await dataSource.searchFollowingUser(
        text,
        UserModel.fromEntity(user),
      );
      final users = res.map((e) => e.entity).toList();
      _updateUsersCache(users);
      return right(users);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> bookmarkPost(
    String postID,
    String userID,
  ) async {
    try {
      await dataSource.bookmarkPost(postID, userID);
      AppService.instance.addToSavedPosts([postID]);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromBookmark(
    String postID,
    String userID,
  ) async {
    try {
      await dataSource.removeFromBookmark(postID, userID);
      AppService.instance.unsavePost(postID);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getUserBookmarkedPosts(
    final String userID,
  ) async {
    try {
      final posts = await dataSource.getUserBookmarkedPosts(userID);
      AppService.instance.setSavedPosts(posts);
      return Right(posts);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Either<Failure, void> clearSavedPosts() {
    AppService.instance.clearSavedPosts();
    return Right(null);
  }

  @override
  Future<Either<Failure, Map<String, UserEntity>>> getAllUsers(
    List<String> uids,
  ) async {
    try {
      final cachedUids = _users.keys.toSet();
      final List<String> notFoundUsers = uids
          .where((element) => !cachedUids.contains(element))
          .toList();

      if (notFoundUsers.isNotEmpty) {
        final res = await dataSource.getAllUsers(notFoundUsers);
        final users = res.map((e) => e.entity).toList();
        _updateUsersCache(users);
      }
      final users = Map.fromEntries(
        _users.entries.where((element) => uids.contains(element.key)),
      );
      return right(users);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Either<Failure, UserEntity> getUserSync(final String uid) {
    try {
      if (_users.containsKey(uid)) return right(_users[uid]!);
      return Left(NetworkFailure('User not found!'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
