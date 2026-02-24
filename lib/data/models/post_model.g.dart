// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
  caption: json['caption'] as String,
  uid: json['uid'] as String,
  username: json['username'] as String,
  imageUrl: json['imageUrl'] as String,
  postId: json['postId'] as String,
  profImageUrl: json['profImageUrl'] as String,
  datePublished: const TimeStampConverter().fromJson(
    json['datePublished'] as Timestamp,
  ),
  postUrl: json['postUrl'] as String,
  likes:
      (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  comments:
      (json['comments'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$PostModelToJson(
  _PostModel instance,
) => <String, dynamic>{
  'caption': instance.caption,
  'uid': instance.uid,
  'username': instance.username,
  'imageUrl': instance.imageUrl,
  'postId': instance.postId,
  'profImageUrl': instance.profImageUrl,
  'datePublished': const TimeStampConverter().toJson(instance.datePublished),
  'postUrl': instance.postUrl,
  'likes': instance.likes,
  'comments': instance.comments,
};
