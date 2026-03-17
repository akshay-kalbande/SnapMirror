import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/converters/json_converter.dart';
import '../../domain/entities/chat_entity.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@Freezed()
sealed class ChatModel with _$ChatModel {
  const ChatModel._();
  const factory ChatModel({
    @JsonKey(name: 'text') required final String text,
    @JsonKey(name: 'seen') required final bool seen,
    @JsonKey(name: 'senderId') required final String senderId,
    @JsonKey(name: 'timestamp')
    @TimeStampConverter()
    required final DateTime timestamp,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  factory ChatModel.fromEntity(final ChatEntity entity) => ChatModel(
    text: entity.text,
    seen: entity.seen,
    senderId: entity.senderId,
    timestamp: entity.timestamp,
  );

  ChatEntity get entity => ChatEntity(
    text: text,
    seen: seen,
    senderId: senderId,
    timestamp: timestamp,
  );
}
