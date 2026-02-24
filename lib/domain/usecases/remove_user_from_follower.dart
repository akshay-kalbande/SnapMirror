import 'package:dartz/dartz.dart';

import '../../core/app_service.dart';
import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/follow_repository.dart';

class RemoveUserFromFollower implements Usecase<UserEntity, UserEntity> {
  final FollowRepository _followRepository;

  RemoveUserFromFollower(this._followRepository);
  @override
  Future<Either<Failure, UserEntity>> call(UserEntity params) async {
    final res = await _followRepository.removeFollower(
      AppService.instance.user.uid,
      params.uid,
    );
    return res.fold((l) => Left(l), (r) {
      AppService.instance.user = AppService.instance.user.removeFollower(
        params.uid,
      );
      return Right(params.removeFollowing(AppService.instance.user.uid));
    });
  }
}
