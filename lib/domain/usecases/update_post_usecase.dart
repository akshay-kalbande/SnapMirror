import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/post_entity.dart';
import '../repositories/post_repository.dart';

class UpdatePostUsecase implements Usecase<PostEntity, PostEntity> {
  final PostRepository postRepository;

  UpdatePostUsecase(this.postRepository);
  @override
  Future<Either<Failure, PostEntity>> call(PostEntity params) async {
    await postRepository.updatePost(params);
    return Right(params);
  }
}
