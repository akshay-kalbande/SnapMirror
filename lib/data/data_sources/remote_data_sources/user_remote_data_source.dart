import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/app_exceptions/exception.dart';
import '../../models/file_upload_result_model.dart';
import '../../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> registerUser(final UserModel user);
  Future<List<UserModel>> searchUser(final String text);
  Future<void> deleteUser(final UserModel user);
  Future<Stream<FileUploadResultModel>> uploadProfilePhoto(
    final File file,
    final String userID,
  );
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseFirestore firestore;
  final collection = 'users';

  UserRemoteDataSourceImpl(this.firestore);
  @override
  Future<UserModel> registerUser(UserModel user) async {
    try {
      await firestore.collection(collection).doc(user.uid).set(user.toJson());
      return user;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserModel> deleteUser(UserModel user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<Stream<FileUploadResultModel>> uploadProfilePhoto(
    File file,
    String userID,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> searchUser(String text) async {
    try {
      final res = await firestore
          .collection(collection)
          .orderBy('username')
          .where('username', isGreaterThanOrEqualTo: text)
          .where('username', isLessThanOrEqualTo: '$text\uf8ff')
          .get();
      return res.docs.map((e) => UserModel.fromJson(e.data())).toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
