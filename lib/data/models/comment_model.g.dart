// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentModel _$CommentModelFromJson(Map<String, dynamic> json) =>
    _CommentModel(
      username: json['username'] as String,
      postId: json['postId'] as String,
      datePublished: const TimeStampConverter().fromJson(
        json['datePublished'] as Timestamp,
      ),
      comment: json['comment'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      commentId: json['commentId'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$CommentModelToJson(
  _CommentModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'postId': instance.postId,
  'datePublished': const TimeStampConverter().toJson(instance.datePublished),
  'comment': instance.comment,
  'profileImageUrl': instance.profileImageUrl,
  'likes': instance.likes,
  'commentId': instance.commentId,
  'uid': instance.uid,
};
