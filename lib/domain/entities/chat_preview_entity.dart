import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_entity.dart';
part 'chat_preview_entity.freezed.dart';

@freezed
sealed class ChatPreviewEntity with _$ChatPreviewEntity {
  const ChatPreviewEntity._();
  const factory ChatPreviewEntity({
    required String id,
    required final String lastMessage,
    required DateTime lastMessageTime,
    required String lastSenderId,
    required final UserEntity user,
    required final int unreadCount,
  }) = _ChatPreviewEntity;
}
