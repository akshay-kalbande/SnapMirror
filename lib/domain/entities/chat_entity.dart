import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';

@freezed
sealed class ChatEntity with _$ChatEntity {
  const factory ChatEntity({
    required final String text,
    required final bool seen,
    required final String senderId,
    required final DateTime timestamp,
  }) = _ChatEntity;
}
