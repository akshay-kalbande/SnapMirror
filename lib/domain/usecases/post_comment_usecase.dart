import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';
import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/comment_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/comments_repository.dart';

class PostCommentUsecase implements Usecase<CommentEntity, PostCommentParams> {
  final CommentsRepository repository;

  const PostCommentUsecase({required this.repository});
  @override
  Future<Either<Failure, CommentEntity>> call(PostCommentParams params) async {
    return (await repository.addComment(params.toEntity));
  }
}

class PostCommentParams extends Equatable {
  final String postID;
  final UserEntity user;
  final String text;

  const PostCommentParams({
    required this.postID,
    required this.user,
    required this.text,
  });
  @override
  List<Object?> get props => [postID, user, text];
  CommentEntity get toEntity => CommentEntity(
    username: user.username,
    postId: postID,
    datePublished: DateTime.now(),
    comment: text,
    profileImageUrl: user.profileImageUrl,
    likes: [],
    commentId: Uuid().v1(),
    uid: user.uid,
  );
}
