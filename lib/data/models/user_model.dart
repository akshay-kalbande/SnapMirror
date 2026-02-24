import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String username,
    required String email,
    required String bio,
    required String uid,
    required String profileImageUrl,
    required int totalPosts,
    required List<String> followers,
    required List<String> following,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(final UserEntity entity) => UserModel(
    username: entity.username,
    email: entity.email,
    bio: entity.bio,
    uid: entity.uid,
    profileImageUrl: entity.profileImageUrl,
    totalPosts: entity.totalPosts,
    followers: entity.followers,
    following: entity.following,
  );

  UserEntity get entity => UserEntity(
    username: username,
    email: email,
    bio: bio,
    uid: uid,
    profileImageUrl: profileImageUrl,
    totalPosts: totalPosts,
    followers: followers,
    following: following,
  );
}
