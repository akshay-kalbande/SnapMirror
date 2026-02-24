import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/app_exceptions/exception.dart';
import '../../models/user_model.dart';

abstract class FollowRemoteDataSource {
  Future<List<UserModel>> getAllUsers(List<String> userIDs);
  Future<List<UserModel>> getAllFollowers(final String userID);
  Future<void> followUser(final String userID, final String followingID);
  Future<void> unfollowUser(final String userID, final String followingID);
  Future<void> removeFollower(final String userID, final String followerID);
}

class FollowRemoteDataSourceImpl implements FollowRemoteDataSource {
  final FirebaseFirestore firestore;

  FollowRemoteDataSourceImpl(this.firestore);
  @override
  Future<List<UserModel>> getAllUsers(List<String> userIDs) async {
    try {
      final response = await firestore
          .collection('users')
          .where('uid', whereIn: userIDs)
          .get();
      return response.docs.map((e) => UserModel.fromJson(e.data())).toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<List<UserModel>> getAllFollowers(String userID) async {
    throw UnimplementedError();
  }

  @override
  Future<void> followUser(String userID, String followingID) async {
    try {
      final batch = firestore.batch();
      batch.update(firestore.collection('users').doc(userID), {
        'following': FieldValue.arrayUnion([followingID]),
      });
      batch.update(firestore.collection('users').doc(followingID), {
        'followers': FieldValue.arrayUnion([userID]),
      });
      await batch.commit();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> unfollowUser(String userID, String followingID) async {
    try {
      final batch = firestore.batch();
      batch.update(firestore.collection('users').doc(userID), {
        'following': FieldValue.arrayRemove([followingID]),
      });
      batch.update(firestore.collection('users').doc(followingID), {
        'followers': FieldValue.arrayRemove([userID]),
      });
      await batch.commit();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> removeFollower(String userID, String followerID) async {
    try {
      final batch = firestore.batch();
      batch.update(firestore.collection('users').doc(userID), {
        'followers': FieldValue.arrayRemove([followerID]),
      });
      batch.update(firestore.collection('users').doc(followerID), {
        'following': FieldValue.arrayRemove([userID]),
      });
      await batch.commit();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
