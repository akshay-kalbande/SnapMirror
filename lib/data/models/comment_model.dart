import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/converters/json_converter.dart';
import '../../domain/entities/comment_entity.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class CommentModel with _$CommentModel {
  const CommentModel._();
  const factory CommentModel({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'postId') required String postId,
    @TimeStampConverter()
    @JsonKey(name: 'datePublished')
    required DateTime datePublished,
    @JsonKey(name: 'comment') required String comment,
    @JsonKey(name: 'profileImageUrl') required String profileImageUrl,
    @JsonKey(name: 'likes') required List<String> likes,
    @JsonKey(name: 'commentId') required String commentId,
    @JsonKey(name: 'uid') required String uid,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
  factory CommentModel.fromEntity(final CommentEntity entity) => CommentModel(
    username: entity.username,
    postId: entity.postId,
    datePublished: entity.datePublished,
    comment: entity.comment,
    profileImageUrl: entity.profileImageUrl,
    likes: entity.likes,
    commentId: entity.commentId,
    uid: entity.uid,
  );

  CommentEntity get entity => CommentEntity(
    username: username,
    postId: postId,
    datePublished: datePublished,
    comment: comment,
    profileImageUrl: profileImageUrl,
    likes: likes,
    commentId: commentId,
    uid: uid,
  );
}
