import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/post_entity.dart';

class LikePostUsecase implements Usecase<void, PostEntity> {
  @override
  Future<Either<Failure, void>> call(PostEntity? params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
