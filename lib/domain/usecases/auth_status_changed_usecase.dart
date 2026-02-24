import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';

class AuthStatusChangedUsecase implements Usecase<UserEntity?, void> {
  @override
  Future<Either<Failure, UserEntity?>> call(void params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
