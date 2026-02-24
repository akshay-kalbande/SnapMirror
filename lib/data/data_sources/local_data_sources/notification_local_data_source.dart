import 'dart:async';

import '../../../core/app_exceptions/exception.dart';
import '../../../domain/entities/notification_creation_entity.dart';
import '../../models/notification_creation_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class NotificationLocalDataSource {
  Future<void> initialize();
  Future<bool?> requestPermissions();
  Future<void> showInstantNotification(
    final NotificationCreationModel notificationModel,
  );
  Future<void> scheduleNotification(
    final NotificationCreationModel notificationModel,
  );
  Future<void> scheduleRepeatingNotification(
    final NotificationCreationModel notificationModel,
    final Duration repeatInterval,
  );
  Future<void> cancelNotification(int notificationId);
  Future<void> cancelAllNotifications();

  Stream<String> get onNotificationTapped;
  Future<String?> getInitialPayload();
}

class NotificationLocalDataSourceImpl implements NotificationLocalDataSource {
  final FlutterLocalNotificationsPlugin _notificationsPlugin;
  final Map<NotificationCreationCategory, _AndroidNotificationChannel>
  _channelMap = {
    NotificationCreationCategory.primary: const _AndroidNotificationChannel(
      id: 'primary_alerts_channel',
      name: 'Critical Alerts',
      description: 'Alerts for messages',
      importance: Importance.max,
    ),
    NotificationCreationCategory.promotion: const _AndroidNotificationChannel(
      id: 'promotional_channel',
      name: 'Promotional & Marketing',
      description: 'Non-critical updates and offers',
      importance: Importance.low,
    ),
    NotificationCreationCategory.schedule: const _AndroidNotificationChannel(
      id: 'schedule_channel',
      name: 'Reminders',
      description: 'Daily or weekly reminders',
      importance: Importance.low,
    ),
  };

  NotificationLocalDataSourceImpl(this._notificationsPlugin);

  final StreamController<String> _notificationPayloadStreamController =
      StreamController<String>.broadcast();

  @override
  Stream<String> get onNotificationTapped =>
      _notificationPayloadStreamController.stream;

  @override
  Future<bool?> requestPermissions() {
    // TODO: implement requestPermissions
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings();
    final LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'Open notification');
    final WindowsInitializationSettings initializationSettingsWindows =
        WindowsInitializationSettings(
          appName: 'Flutter Local Notifications Example',
          appUserModelId: 'Com.Dexterous.FlutterLocalNotificationsExample',
          guid: 'd49b0314-ee7a-4626-bf79-97cdb8a991bb',
        );
    final InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin,
          macOS: initializationSettingsDarwin,
          linux: initializationSettingsLinux,
          windows: initializationSettingsWindows,
        );
    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
      onDidReceiveBackgroundNotificationResponse:
          _onBackgroundNotificationTapped,
    );
  }

  @override
  Future<String?> getInitialPayload() async {
    try {
      final details = await _notificationsPlugin
          .getNotificationAppLaunchDetails();
      if (details != null && details.didNotificationLaunchApp) {
        return details.notificationResponse?.payload;
      }
      return null;
    } on Exception catch (e) {
      throw NotificationException(
        message: 'Failed to get initial payload: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> showInstantNotification(
    NotificationCreationModel notificationModel,
  ) async {
    final androidDetails = _getAndroidNotificationDetails(
      notificationModel.notificationCategory,
    );
    final notificationDetails = NotificationDetails(android: androidDetails);
    await _notificationsPlugin.show(
      notificationModel.id,
      notificationModel.title,
      notificationModel.body,
      notificationDetails,
      payload: notificationModel.payload,
    );
  }

  @override
  Future<void> scheduleNotification(
    NotificationCreationModel notificationModel,
  ) async {
    // await _notificationsPlugin.zonedSchedule(
    //   id,
    //   title,
    //   body,
    //   scheduledDate,
    //   notificationDetails,
    //   androidScheduleMode: androidScheduleMode,
    // );
  }

  @override
  Future<void> scheduleRepeatingNotification(
    NotificationCreationModel notificationModel,
    Duration repeatInterval,
  ) {
    // TODO: implement scheduleRepeatingNotification
    throw UnimplementedError();
  }

  @override
  Future<void> cancelNotification(int notificationId) async {
    try {
      await _notificationsPlugin.cancel(notificationId);
    } catch (e) {
      throw NotificationException(message: e.toString());
    }
  }

  @override
  Future<void> cancelAllNotifications() async {
    try {
      await _notificationsPlugin.cancelAll();
    } catch (e) {
      throw NotificationException(message: e.toString());
    }
  }

  AndroidNotificationDetails _getAndroidNotificationDetails(
    NotificationCreationCategory notificationCategory,
  ) {
    final channelConfig = _channelMap[notificationCategory]!;

    return AndroidNotificationDetails(
      channelConfig.id,
      channelConfig.name,
      channelDescription: channelConfig.description,
      importance: channelConfig.importance,
      priority: Priority.high,
    );
  }

  void _onNotificationTapped(NotificationResponse details) {
    if (details.payload != null) {
      _notificationPayloadStreamController.add(details.payload!);
    }
  }

  @pragma('vm:entry-point')
  void _onBackgroundNotificationTapped(NotificationResponse details) {
    /// for when no interface to be shown to user after tapping the notification when app is killed
    //TODO:
  }

  void dispose() {
    _notificationPayloadStreamController.close();
  }
}

class _AndroidNotificationChannel {
  final String id;
  final String name;
  final String description;
  final Importance importance;

  const _AndroidNotificationChannel({
    required this.id,
    required this.name,
    required this.description,
    required this.importance,
  });
}
