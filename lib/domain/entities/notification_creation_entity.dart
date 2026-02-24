import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_creation_entity.freezed.dart';

enum NotificationCreationCategory { primary, promotion, schedule }

@freezed
sealed class NotificationCreationEntity with _$NotificationCreationEntity {
  const NotificationCreationEntity._();
  const factory NotificationCreationEntity({
    required int id,
    required String title,
    required String body,
    required NotificationCreationCategory notificationCategory,
    required DateTime scheduleTime,
    String? payload,
    @Default(false) bool isRepeating,
  }) = _NotificationCreationEntity;
}
