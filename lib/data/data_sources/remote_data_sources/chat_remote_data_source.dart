import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/app_exceptions/exception.dart';
import '../../../domain/entities/user_entity.dart';
import '../../models/chat_model.dart';
import '../../models/chat_preview_model.dart';

abstract class ChatRemoteDataSource {
  Future<List<ChatPreviewModel>> getChatPreviewList(final UserEntity self);
  Future<List<ChatModel>> getUserChats({
    required final UserEntity self,
    required final String userId,
  });
  Future<ChatModel> sendMessage({
    required final UserEntity self,
    required final String userId,
    required final ChatModel message,
  });

  Future<void> clearUnreadCount(final String selfId, final String uid);
  Future<void> markAllMessagesAsRead(final String selfId, final String uid);

  Stream<List<ChatPreviewModel>> previewMessageStream(final String uid);
  Stream<List<ChatModel>> chatStream(final String selfId, final String uid);
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
  Future<List<ChatModel>> getUserChats({
    required UserEntity self,
    required String userId,
  }) async {
    try {
      final id = ([self.uid, userId]..sort()).join('_');
      final res = await firestore
          .collection(collection)
          .doc(id)
          .collection(msgCollection)
          .orderBy('timestamp', descending: true)
          .get();
      return res.docs.map((e) => ChatModel.fromJson(e.data())).toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<ChatModel> sendMessage({
    required UserEntity self,
    required String userId,
    required ChatModel message,
  }) async {
    try {
      final id = ([self.uid, userId]..sort()).join('_');
      final res = await firestore
          .collection(collection)
          .doc(id)
          .collection(msgCollection)
          .add(message.toJson());
      await firestore.collection(collection).doc(id).update({
        'lastSenderId': self.uid,
        'lastMessageTimestamp': message.timestamp,
        'lastMessage': message.text,
        'unreadCount.$userId': FieldValue.increment(1),
      });
      return ChatModel.fromJson((await res.get()).data()!);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Stream<List<ChatPreviewModel>> previewMessageStream(String uid) {
    print('Get preview message stream : $uid');
    return firestore
        .collection(collection)
        .where('participants', arrayContains: uid)
        .snapshots()
        .map(
          (event) => event.docs
              .map(
                (e) =>
                    ChatPreviewModel.fromJson(e.data()..addAll({'id': e.id})),
              )
              .toList(),
        )
        .asBroadcastStream();
  }

  @override
  Stream<List<ChatModel>> chatStream(final String selfId, final String uid) {
    final id = ([selfId, uid]..sort()).join('_');
    return (firestore
            .collection(collection)
            .doc(id)
            .collection(msgCollection)
            .orderBy('timestamp', descending: true)
            .snapshots()
            .map(
              (event) =>
                  event.docs.map((e) => ChatModel.fromJson(e.data())).toList(),
            ))
        .asBroadcastStream();
  }

  @override
  Future<void> clearUnreadCount(String selfId, String uid) async {
    try {
      final id = ([selfId, uid]..sort()).join('_');
      await firestore.collection(collection).doc(id).update({
        'unreadCount.$selfId': 0,
      });
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> markAllMessagesAsRead(String selfId, String uid) async {
    try {
      final id = ([selfId, uid]..sort()).join('_');

      final batch = firestore.batch();
      final snapshots = await firestore
          .collection(collection)
          .doc(id)
          .collection(msgCollection)
          .where('senderId', isNotEqualTo: selfId)
          .where('seen', isEqualTo: false)
          .get();
      for (final doc in snapshots.docs) {
        batch.update(doc.reference, {'seen': true});
      }
      await batch.commit();
      print('Successfully marked messages as read: $selfId');
    } catch (e) {
      print('Error while marking messages as read: ${e.toString()}');
      throw ServerException(message: e.toString());
    }
  }
}
