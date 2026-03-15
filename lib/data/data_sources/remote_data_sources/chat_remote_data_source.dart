import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/app_exceptions/exception.dart';
import '../../../domain/entities/user_entity.dart';
import '../../models/chat_preview_model.dart';
import '../../models/chats_model.dart';

abstract class ChatRemoteDataSource {
  Future<List<ChatPreviewModel>> getChatPreviewList(final UserEntity self);
  Future<ChatsModel> getUserChats({
    required final UserEntity self,
    required final String user,
  });
}

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final FirebaseFirestore firestore;
  final String collection = 'chats';
  final String msgCollection = 'messages';

  ChatRemoteDataSourceImpl({required this.firestore});
  @override
  Future<List<ChatPreviewModel>> getChatPreviewList(UserEntity self) async {
    try {
      final res = await firestore
          .collection(collection)
          .where('participants', arrayContains: self.uid)
          .get();
      return res.docs
          .map((e) => ChatPreviewModel.fromJson(e.data()..addAll({'id': e.id})))
          .toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<ChatsModel> getUserChats({
    required UserEntity self,
    required String user,
  }) {
    // TODO: implement getUserChats
    throw UnimplementedError();
  }
}
