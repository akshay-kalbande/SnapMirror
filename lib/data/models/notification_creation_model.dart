import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/notification_creation_entity.dart';

part 'notification_creation_model.freezed.dart';
part 'notification_creation_model.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class NotificationCreationModel with _$NotificationCreationModel {
  const NotificationCreationModel._();
  const factory NotificationCreationModel({
    required int id,
    required String title,
    required String body,
    required DateTime scheduleTime,
    required NotificationCreationCategory notificationCategory,
    String? payload,
    @Default(false) bool isRepeating,
  }) = _NotificationCreationModel;

  factory NotificationCreationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationCreationModelFromJson(json);

  factory NotificationCreationModel.fromEntity(
    final NotificationCreationEntity entity,
  ) => NotificationCreationModel(
    id: entity.id,
    title: entity.title,
    body: entity.body,
    scheduleTime: entity.scheduleTime,
    payload: entity.payload,
    notificationCategory: entity.notificationCategory,
    isRepeating: entity.isRepeating,
  );

  NotificationCreationEntity get entity => NotificationCreationEntity(
    id: id,
    title: title,
    body: body,
    scheduleTime: scheduleTime,
    notificationCategory: notificationCategory,
    payload: payload,
    isRepeating: isRepeating,
  );
}
