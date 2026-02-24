import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
sealed class UserEntity with _$UserEntity {
  const UserEntity._();
  const factory UserEntity({
    required String username,
    required String email,
    required String bio,
    required String uid,
    required String profileImageUrl,
    required int totalPosts,
    required List<String> followers,
    required List<String> following,
  }) = _UserEntity;

  UserEntity addFollower(final String followerID) {
    return copyWith(followers: [...followers, followerID]);
  }

  UserEntity removeFollower(final String followerID) {
    return copyWith(followers: [...followers]..remove(followerID));
  }

  UserEntity addFollowing(final String followingID) {
    return copyWith(following: [...following, followingID]);
  }

  UserEntity removeFollowing(final String followingID) {
    return copyWith(following: [...following]..remove(followingID));
  }
}
