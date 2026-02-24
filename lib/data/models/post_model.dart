import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/converters/json_converter.dart';
import '../../domain/entities/post_entity.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class PostModel with _$PostModel {
  const PostModel._();
  const factory PostModel({
    required String caption,
    required String uid,
    required String username,
    required String imageUrl,
    required String postId,
    required String profImageUrl,
    @TimeStampConverter() required DateTime datePublished,
    required String postUrl,
    @Default([]) List<String> likes,
    @Default([]) List<String> comments,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  factory PostModel.fromEntity(PostEntity entity) => PostModel(
    caption: entity.caption,
    uid: entity.uid,
    username: entity.username,
    imageUrl: entity.imageUrl,
    postId: entity.postId,
    profImageUrl: entity.profImageUrl,
    datePublished: entity.datePublished,
    postUrl: entity.postUrl,
    likes: entity.likes,
    comments: entity.comments,
  );

  PostEntity get entity => PostEntity(
    caption: caption,
    uid: uid,
    username: username,
    imageUrl: imageUrl,
    postId: postId,
    profImageUrl: profImageUrl,
    datePublished: datePublished,
    postUrl: postUrl,
    likes: likes,
    comments: comments,
  );
}
