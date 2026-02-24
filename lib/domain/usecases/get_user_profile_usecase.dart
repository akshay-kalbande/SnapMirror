import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';

class GetUserProfileUsecase implements Usecase<UserEntity, String> {
  @override
  Future<Either<Failure, UserEntity>> call(String? params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
