import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';

class UpdateProfileUsecase implements Usecase<UserEntity, UserEntity> {
  @override
  Future<Either<Failure, UserEntity>> call(UserEntity? params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
