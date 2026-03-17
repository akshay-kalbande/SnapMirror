// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => _ChatModel(
  text: json['text'] as String,
  seen: json['seen'] as bool,
  senderId: json['senderId'] as String,
  timestamp: const TimeStampConverter().fromJson(
    json['timestamp'] as Timestamp,
  ),
);

Map<String, dynamic> _$ChatModelToJson(_ChatModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'seen': instance.seen,
      'senderId': instance.senderId,
      'timestamp': const TimeStampConverter().toJson(instance.timestamp),
    };
