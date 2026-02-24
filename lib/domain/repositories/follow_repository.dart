import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/user_entity.dart';

abstract class FollowRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers(
    final List<String> userIDs,
  );
  Future<Either<Failure, List<UserEntity>>> getAllFollowers(
    final String userID,
  );
  Future<Either<Failure, void>> followUser(
    final String userID,
    final String followingID,
  );
  Future<Either<Failure, void>> unfollowUser(
    final String userID,
    final String followingID,
  );
  Future<Either<Failure, void>> removeFollower(
    final String userID,
    final String followerID,
  );
}
