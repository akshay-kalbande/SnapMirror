import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/follow_repository.dart';

class GetAllFollowersOfUser implements Usecase<List<UserEntity>, List<String>> {
  final FollowRepository _followRepository;

  GetAllFollowersOfUser(this._followRepository);
  @override
  Future<Either<Failure, List<UserEntity>>> call(List<String>? params) async {
    if ((params ?? []).isEmpty) return Right([]);
    return (await _followRepository.getUsers(params!));
  }
}
