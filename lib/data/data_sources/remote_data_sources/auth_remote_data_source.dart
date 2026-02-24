import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/app_exceptions/exception.dart';
import '../../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Stream<String?> get authStream;
  Future<UserModel> getUser(final String userID);
  Future<UserModel> loginUser({
    required String email,
    required String password,
  });
  Future<void> logoutUser();
  Future<String> createUser(final String email, final String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRemoteDataSourceImpl(this._firebaseAuth, this._firestore);

  @override
  Stream<String?> get authStream => _firebaseAuth.userChanges().map((event) {
    return event?.uid;
  });

  @override
  Future<UserModel> getUser(String userID) async {
    try {
      final res = await _firestore
          .collection('users')
          .where('uid', isEqualTo: userID)
          .get();
      if (res.docs.isNotEmpty) {
        return UserModel.fromJson(res.docs.first.data());
      }
      throw ServerException(message: 'Invalid userID. User not found');
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserModel> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final res = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (res.user == null) {
        throw ServerException(
          message: 'Something went wrong while logging in!',
        );
      }
      return getUser(res.user!.uid);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> logoutUser() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<String> createUser(final String email, final String password) async {
    try {
      final res = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (res.user == null) throw 'Something went wrong while creating user';
      return res.user!.uid;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
