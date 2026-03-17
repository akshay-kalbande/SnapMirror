import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/chat_entity.dart';
import '../entities/chat_preview_entity.dart';
import '../entities/user_entity.dart';

abstract class ChatRepository {
  Future<Either<Failure, List<ChatPreviewEntity>>> getChatPreviewList(
    final UserEntity self,
  );
  Future<Either<Failure, List<ChatEntity>>> getUserChats(
    final UserEntity self,
    final String userId,
  );
  Future<Either<Failure, ChatEntity>> sendMessage({
    required UserEntity self,
    required String userId,
    required ChatEntity message,
  });

  Future<Either<Failure, void>> clearUnreadCount(
    final String selfId,
    final String uid,
  );
  Future<Either<Failure, void>> markAllMessagesAsRead(
    final String selfId,
    final String uid,
  );

  Stream<List<ChatPreviewEntity>> previewMessageStream(final String uid);
  Stream<List<ChatEntity>> chatStream(final String selfId, final String uid);
}
