import 'package:flutter/material.dart';

import '../../common/messages/screen_message.dart';

abstract class AppUtils {
  static void showInfoMessage(final BuildContext context, final String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, style: TextStyle(color: Colors.yellow)),
      ),
    );
  }

  static void showNotification(
    final BuildContext context,
    final ScreenMessage notification,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          notification.content,
          style: TextStyle(
            color: notification.isError ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }
}
