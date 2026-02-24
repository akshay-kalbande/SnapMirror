import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/comment_entity.dart';
import '../entities/page_request_entity.dart';
import '../entities/page_result_entity.dart';

abstract class CommentsRepository {
  Stream<CommentEntity> get comments;
  Future<Either<Failure, CommentEntity>> addComment(
    final CommentEntity comment,
  );
  Future<Either<Failure, CommentEntity>> getComment({
    required String commentID,
    required String postID,
  });
  Future<Either<Failure, CommentEntity>> updateComment(
    final CommentEntity comment,
  );
  Future<Either<Failure, PageResultEntity<String>>> getComments(
    final PageRequestEntity pageRequest,
  );
}
