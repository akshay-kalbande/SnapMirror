import 'package:dartz/dartz.dart';

import '../../core/app_service.dart';
import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/post_entity.dart';
import '../repositories/post_repository.dart';

class TogglePostLikeUsecase implements Usecase<PostEntity, PostEntity> {
  final PostRepository postRepository;

  TogglePostLikeUsecase(this.postRepository);
  @override
  Future<Either<Failure, PostEntity>> call(PostEntity params) async {
    final newPost = params.toggleLike(AppService.instance.user.uid);
    await postRepository.updatePost(newPost);
    return Right(newPost);
  }
}
