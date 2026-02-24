// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_creation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationCreationModel _$NotificationCreationModelFromJson(
  Map<String, dynamic> json,
) => _NotificationCreationModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  body: json['body'] as String,
  scheduleTime: DateTime.parse(json['scheduleTime'] as String),
  notificationCategory: $enumDecode(
    _$NotificationCreationCategoryEnumMap,
    json['notificationCategory'],
  ),
  payload: json['payload'] as String?,
  isRepeating: json['isRepeating'] as bool? ?? false,
);

Map<String, dynamic> _$NotificationCreationModelToJson(
  _NotificationCreationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'scheduleTime': instance.scheduleTime.toIso8601String(),
  'notificationCategory':
      _$NotificationCreationCategoryEnumMap[instance.notificationCategory]!,
  'payload': instance.payload,
  'isRepeating': instance.isRepeating,
};

const _$NotificationCreationCategoryEnumMap = {
  NotificationCreationCategory.primary: 'primary',
  NotificationCreationCategory.promotion: 'promotion',
  NotificationCreationCategory.schedule: 'schedule',
};
