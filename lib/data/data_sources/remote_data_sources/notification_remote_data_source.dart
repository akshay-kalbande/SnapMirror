import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

abstract class NotificationRemoteDataSource {
  Future<void> setupFCM();
  Future<String?> retrieveFCMToken();
  Future<void> subscribeToTopic(String topic);
  Future<void> unsubscribeFromTopic(String topic);

  Stream<RemoteMessage> get onForegroundMessage;
  Stream<String> get onTokenRefresh;
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final FirebaseMessaging _fcm;

  final StreamController<RemoteMessage> _messageStreamController =
      StreamController<RemoteMessage>.broadcast();
  final StreamController<String> _tokenStreamController =
      StreamController<String>.broadcast();

  NotificationRemoteDataSourceImpl(this._fcm);

  @override
  Stream<RemoteMessage> get onForegroundMessage =>
      _messageStreamController.stream;

  @override
  Stream<String> get onTokenRefresh => _tokenStreamController.stream;

  @override
  Future<void> setupFCM() async {
    await _fcm.requestPermission();

    _fcm.getInitialMessage();
    FirebaseMessaging.onMessage.listen((message) {
      _messageStreamController.add(message);
    });

    _fcm.onTokenRefresh.listen((token) {
      _tokenStreamController.add(token);
    });

    // TODO:
    //  The onBackgroundMessage handler MUST be defined as a top-level function
    // in main.dart or setup.dart and cannot be configured here.
  }

  @override
  Future<String?> retrieveFCMToken() async {
    return _fcm.getToken();
  }

  @override
  Future<void> subscribeToTopic(String topic) async {
    await _fcm.subscribeToTopic(topic);
  }

  @override
  Future<void> unsubscribeFromTopic(String topic) async {
    await _fcm.unsubscribeFromTopic(topic);
  }

  void dispose() {
    _messageStreamController.close();
    _tokenStreamController.close();
  }
}
