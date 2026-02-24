import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/notification_event_entity.dart';

part 'notification_event_model.freezed.dart';
part 'notification_event_model.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class NotificationEventModel with _$NotificationEventModel {
  const NotificationEventModel._();
  const factory NotificationEventModel({
    required String id,
    required String title,
    required String body,
    required String payload,
    required NotificationEventType type,
  }) = _NotificationEventModel;

  factory NotificationEventModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationEventModelFromJson(json);
}
