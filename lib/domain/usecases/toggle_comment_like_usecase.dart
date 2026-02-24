import 'package:dartz/dartz.dart';

import '../../core/app_service.dart';
import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/comment_entity.dart';
import '../repositories/comments_repository.dart';

class ToggleCommentLikeUsecase
    implements Usecase<CommentEntity, CommentEntity> {
  final CommentsRepository repository;

  ToggleCommentLikeUsecase(this.repository);
  @override
  Future<Either<Failure, CommentEntity>> call(CommentEntity params) async {
    return await repository.updateComment(
      params.toggleLike(AppService.instance.user.uid),
    );
  }
}
