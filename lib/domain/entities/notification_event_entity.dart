import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event_entity.freezed.dart';

enum NotificationEventType { local, remote }

@freezed
sealed class NotificationEventEntity with _$NotificationEventEntity {
  const NotificationEventEntity._();
  const factory NotificationEventEntity({
    required String id,
    required String title,
    required String body,
    required String payload,
    required NotificationEventType type,
  }) = _NotificationEventEntity;
}
