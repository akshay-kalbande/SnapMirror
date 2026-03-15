import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class UpdateProfileUsecase implements Usecase<UserEntity, UserEntity> {
  final UserRepository repository;

  UpdateProfileUsecase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(UserEntity? params) {
    return repository.updateUser(params!);
  }
}
