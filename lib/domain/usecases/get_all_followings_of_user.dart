import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/follow_repository.dart';

class GetAllFollowingsOfUser
    implements Usecase<List<UserEntity>, List<String>> {
  final FollowRepository _followRepository;

  GetAllFollowingsOfUser(this._followRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(List<String>? params) async {
    if ((params ?? []).isEmpty) return Right([]);
    return (await _followRepository.getUsers(params!));
  }
}
