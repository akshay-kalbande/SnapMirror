import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/comment_entity.dart';
import '../repositories/comments_repository.dart';

class GetCommentUsecase
    implements Usecase<CommentEntity, ({String commentID, String postID})> {
  final CommentsRepository repository;

  GetCommentUsecase(this.repository);
  @override
  Future<Either<Failure, CommentEntity>> call(
    ({String commentID, String postID}) params,
  ) async {
    return (await repository.getComment(
      commentID: params.commentID,
      postID: params.postID,
    ));
  }
}
