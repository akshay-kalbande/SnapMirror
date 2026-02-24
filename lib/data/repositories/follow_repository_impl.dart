import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/follow_repository.dart';
import '../data_sources/remote_data_sources/follow_remote_data_source.dart';

class FollowRepositoryImpl implements FollowRepository {
  final FollowRemoteDataSource _followRemoteDataSource;

  FollowRepositoryImpl(this._followRemoteDataSource);
  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(
    List<String> userIDs,
  ) async {
    try {
      return Right(
        (await _followRemoteDataSource.getAllUsers(
          userIDs,
        )).map((e) => e.entity).toList(),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getAllFollowers(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> followUser(
    String userID,
    String followingID,
  ) async {
    try {
      await _followRemoteDataSource.followUser(userID, followingID);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> unfollowUser(
    String userID,
    String followingID,
  ) async {
    try {
      await _followRemoteDataSource.unfollowUser(userID, followingID);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeFollower(
    String userID,
    String followerID,
  ) async {
    try {
      await _followRemoteDataSource.removeFollower(userID, followerID);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
