import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';

@freezed
sealed class CommentEntity with _$CommentEntity {
  const CommentEntity._();
  const factory CommentEntity({
    required String username,
    required String postId,
    required DateTime datePublished,
    required String comment,
    required String profileImageUrl,
    required List<String> likes,
    required String commentId,
    required String uid,
  }) = _CommentEntity;

  CommentEntity toggleLike(String userId) {
    final newLikes = [...likes];
    if (newLikes.contains(userId)) {
      newLikes.remove(userId);
    } else {
      newLikes.add(userId);
    }
    return copyWith(likes: newLikes);
  }
}
