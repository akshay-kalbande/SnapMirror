import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/notification_creation_entity.dart';

abstract class NotificationRepository {
  Future<Either<Failure, void>> initialize();
  Future<Either<Failure, void>> showInstantNotification(
    NotificationCreationEntity notification,
  );
  Future<Either<Failure, void>> scheduleNotification(
    NotificationCreationEntity notification,
  );
  Future<Either<Failure, void>> scheduleRepeatingNotification(
    NotificationCreationEntity notification,
  );
  Future<Either<Failure, void>> cancelNotification(int notificationId);
  Future<Either<Failure, void>> cancelAllNotifications(int notificationId);

  Stream<String> get onNotificationTapped;

  //remote
  Future<Either<Failure, String?>> getFCMToken();
  Future<Either<Failure, void>> subscribeToTopic(String topic);
  Future<Either<Failure, void>> setRemoteMessageHandler();

  Stream<Map<String, dynamic>> get onRemoteMessageReceived;
  Stream<String> get onTokenRefreshed;
}
