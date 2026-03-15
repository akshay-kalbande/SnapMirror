// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatPreviewModel _$ChatPreviewModelFromJson(Map<String, dynamic> json) =>
    _ChatPreviewModel(
      id: json['id'] as String,
      lastMessage: json['lastMessage'] as String,
      lastMessageTime: const TimeStampConverter().fromJson(
        json['lastMessageTimestamp'] as Timestamp,
      ),
      lastSenderId: json['lastSenderId'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      unreadCount: Map<String, int>.from(json['unreadCount'] as Map),
    );

Map<String, dynamic> _$ChatPreviewModelToJson(_ChatPreviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastMessage': instance.lastMessage,
      'lastMessageTimestamp': const TimeStampConverter().toJson(
        instance.lastMessageTime,
      ),
      'lastSenderId': instance.lastSenderId,
      'participants': instance.participants,
      'unreadCount': instance.unreadCount,
    };
