import 'package:dartz/dartz.dart';

import '../../core/app_service.dart';
import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/follow_repository.dart';

class FollowUser implements Usecase<UserEntity, UserEntity> {
  final FollowRepository followRepository;

  FollowUser(this.followRepository);
  @override
  Future<Either<Failure, UserEntity>> call(UserEntity following) async {
    final res = await followRepository.followUser(
      AppService.instance.user.uid,
      following.uid,
    );
    return res.fold((l) => Left(l), (r) {
      AppService.instance.user = AppService.instance.user.addFollowing(
        following.uid,
      );
      return Right(following.addFollower(AppService.instance.user.uid));
    });
  }
}
