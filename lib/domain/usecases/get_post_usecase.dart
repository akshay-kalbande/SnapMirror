import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/post_entity.dart';
import '../repositories/post_repository.dart';

class GetPostUsecase implements Usecase<PostEntity, String> {
  final PostRepository repository;

  GetPostUsecase(this.repository);

  @override
  Future<Either<Failure, PostEntity>> call(String postID) async {
    return repository.getPost(postID);
  }
}
