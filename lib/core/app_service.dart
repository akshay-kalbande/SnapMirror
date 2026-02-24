import 'package:flutter/cupertino.dart';

import '../domain/entities/user_entity.dart';

class AppService {
  AppService._();

  static final AppService _instance = AppService._();

  static AppService get instance => _instance;

  final GlobalKey<NavigatorState> rootNavigator = GlobalKey<NavigatorState>();

  late UserEntity user;

  bool initialSplashShown = false;
}
