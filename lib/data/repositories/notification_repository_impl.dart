import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../domain/entities/notification_creation_entity.dart';
import '../../domain/repositories/notification_repository.dart';
import '../data_sources/local_data_sources/notification_local_data_source.dart';
import '../data_sources/remote_data_sources/notification_remote_data_source.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationLocalDataSource localDataSource;
  final NotificationRemoteDataSource remoteDataSource;

  NotificationRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Stream<String> get onNotificationTapped =>
      localDataSource.onNotificationTapped;

  @override
  // TODO: implement onRemoteMessageReceived
  Stream<Map<String, dynamic>> get onRemoteMessageReceived =>
      throw UnimplementedError();

  @override
  Stream<String> get onTokenRefreshed => remoteDataSource.onTokenRefresh;

  @override
  Future<Either<Failure, void>> initialize() async {
    try {
      await localDataSource.initialize();
      await remoteDataSource.setupFCM();
      return Right(null);
    } catch (e) {
      return Left(NotificationFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> showInstantNotification(
    NotificationCreationEntity notification,
  ) {
    // TODO: implement showNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> scheduleNotification(
    NotificationCreationEntity notification,
  ) {
    // TODO: implement scheduleNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> scheduleRepeatingNotification(
    NotificationCreationEntity notification,
  ) {
    // TODO: implement scheduleRepeatingNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> cancelNotification(int notificationId) {
    // TODO: implement cancelNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> cancelAllNotifications(int notificationId) {
    // TODO: implement cancelNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String?>> getFCMToken() {
    // TODO: implement getFCMToken
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> subscribeToTopic(String topic) {
    // TODO: implement subscribeToTopic
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> setRemoteMessageHandler() {
    // TODO: implement setRemoteMessageHandler
    throw UnimplementedError();
  }
}
