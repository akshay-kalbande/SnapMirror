import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';

@freezed
sealed class PostEntity with _$PostEntity {
  const PostEntity._();
  const factory PostEntity({
    required String caption,
    required String uid,
    required String username,
    required String imageUrl,
    required String postId,
    required String profImageUrl,
    required DateTime datePublished,
    required String postUrl,
    required List<String> likes,
    required List<String> comments,
  }) = _PostEntity;

  PostEntity toggleLike(String userId) {
    final newLikes = [...likes];
    if (newLikes.contains(userId)) {
      newLikes.remove(userId);
    } else {
      newLikes.add(userId);
    }
    return copyWith(likes: newLikes);
  }
}
