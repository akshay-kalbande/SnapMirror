import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/converters/json_converter.dart';

part 'chat_preview_model.freezed.dart';
part 'chat_preview_model.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class ChatPreviewModel with _$ChatPreviewModel {
  const ChatPreviewModel._();
  const factory ChatPreviewModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'lastMessage') required final String lastMessage,
    @TimeStampConverter()
    @JsonKey(name: 'lastMessageTimestamp')
    required DateTime lastMessageTime,
    @JsonKey(name: 'lastSenderId') required String lastSenderId,
    @JsonKey(name: 'participants') required final List<String> participants,
    @JsonKey(name: 'unreadCount') required final Map<String, int> unreadCount,
  }) = _ChatPreviewModel;

  factory ChatPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$ChatPreviewModelFromJson(json);
}
