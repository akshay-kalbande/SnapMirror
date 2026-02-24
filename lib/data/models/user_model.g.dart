// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  username: json['username'] as String,
  email: json['email'] as String,
  bio: json['bio'] as String,
  uid: json['uid'] as String,
  profileImageUrl: json['profileImageUrl'] as String,
  totalPosts: (json['totalPosts'] as num).toInt(),
  followers: (json['followers'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  following: (json['following'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'uid': instance.uid,
      'profileImageUrl': instance.profileImageUrl,
      'totalPosts': instance.totalPosts,
      'followers': instance.followers,
      'following': instance.following,
    };
