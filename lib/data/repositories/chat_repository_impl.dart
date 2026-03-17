import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../domain/entities/chat_entity.dart';
import '../../domain/entities/chat_preview_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/chat_repository.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/remote_data_sources/chat_remote_data_source.dart';
import '../models/chat_model.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource dataSource;
  final UserRepository userRepository;

  ChatRepositoryImpl({required this.dataSource, required this.userRepository});
  @override
  Future<Either<Failure, List<ChatPreviewEntity>>> getChatPreviewList(
    UserEntity self,
  ) async {
    try {
      final res = await dataSource.getChatPreviewList(self);
      final uids = res
          .map(
            (e) => e.participants.firstWhere((element) => element != self.uid),
          )
          .toList();
      final usersRes = await userRepository.getAllUsers(uids);
      return usersRes.fold((l) => Left(l), (users) {
        return right(
          res.map((e) {
            final uid = e.participants.firstWhere(
              (element) => element != self.uid,
            );
            return ChatPreviewEntity(
              id: e.id,
              lastMessage: e.lastMessage,
              lastMessageTime: e.lastMessageTime,
              lastSenderId: e.lastSenderId,
              user: users[uid]!,
              unreadCount: e.unreadCount[self.uid]!,
            );
          }).toList(),
        );
      });
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ChatEntity>>> getUserChats(
    UserEntity self,
    String userId,
  ) async {
    try {
      final res = await dataSource.getUserChats(self: self, userId: userId);
      return right(res.map((e) => e.entity).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ChatEntity>> sendMessage({
    required UserEntity self,
    required String userId,
    required ChatEntity message,
  }) async {
    try {
      final res = await dataSource.sendMessage(
        self: self,
        userId: userId,
        message: ChatModel.fromEntity(message),
      );
      return right(res.entity);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Stream<List<ChatPreviewEntity>> previewMessageStream(final String uid) {
    return dataSource.previewMessageStream(uid).asyncMap((event) async {
      final uids = event
          .map((e) => e.participants.firstWhere((id) => id != uid))
          .toList();

      final usersRes = await userRepository.getAllUsers(uids);

      return usersRes.fold((l) => [], (userMap) {
        return event.map((e) {
          final otherUid = e.participants.firstWhere((id) => id != uid);
          return ChatPreviewEntity(
            id: e.id,
            lastMessage: e.lastMessage,
            lastMessageTime: e.lastMessageTime,
            lastSenderId: e.lastSenderId,
            user: userMap[otherUid]!,
            unreadCount: e.unreadCount[uid] ?? 0,
          );
        }).toList();
      });
    });

    // final List<ChatPreviewEntity> preview = [];
    // String? error;
    // dataSource.previewMessageStream(uid).map((event) async {
    //   final uids = event
    //       .map((e) => e.participants.firstWhere((element) => element != uid))
    //       .toList();
    //   final usersRes = await userRepository.getAllUsers(uids);
    //   usersRes.fold((l) => error = l.message, (r) {
    //     event.map((e) {
    //       final String userUid = e.participants.firstWhere(
    //         (element) => element != uid,
    //       );
    //       preview.add(
    //         ChatPreviewEntity(
    //           id: e.id,
    //           lastMessage: e.lastMessage,
    //           lastMessageTime: e.lastMessageTime,
    //           lastSenderId: e.lastSenderId,
    //           user: r[userUid]!,
    //           unreadCount: e.unreadCount[userUid]!,
    //         ),
    //       );
    //     });
    //   });
    // });
    // yield preview;
  }

  @override
  Stream<List<ChatEntity>> chatStream(String selfId, String uid) {
    return dataSource
        .chatStream(selfId, uid)
        .map((event) => event.map((e) => e.entity).toList());
  }

  @override
  Future<Either<Failure, void>> clearUnreadCount(
    String selfId,
    String uid,
  ) async {
    try {
      await dataSource.clearUnreadCount(selfId, uid);
      return right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> markAllMessagesAsRead(
    String selfId,
    String uid,
  ) async {
    try {
      await dataSource.markAllMessagesAsRead(selfId, uid);
      return right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
