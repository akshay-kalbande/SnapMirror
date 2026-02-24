// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationEventModel _$NotificationEventModelFromJson(
  Map<String, dynamic> json,
) => _NotificationEventModel(
  id: json['id'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  payload: json['payload'] as String,
  type: $enumDecode(_$NotificationEventTypeEnumMap, json['type']),
);

Map<String, dynamic> _$NotificationEventModelToJson(
  _NotificationEventModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'payload': instance.payload,
  'type': _$NotificationEventTypeEnumMap[instance.type]!,
};

const _$NotificationEventTypeEnumMap = {
  NotificationEventType.local: 'local',
  NotificationEventType.remote: 'remote',
};
