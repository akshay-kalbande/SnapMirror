import 'package:flutter/material.dart';

import '../../../common/messages/screen_message.dart';

abstract class AppUtils {
  static void showInfoMessage(final BuildContext context, final String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, style: TextStyle(color: Colors.blue)),
      ),
    );
  }

  static void showNotification(
    final BuildContext context,
    final ScreenMessage notification,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        content: Text(
          notification.content,
          style: TextStyle(
            color: notification.isError ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }

  static String dateTimeToIntervalPassed(final DateTime time) {
    final diff = time.difference(DateTime.now()).abs();
    if (diff.inHours >= 24) return '${(diff.inHours / 24).floor()} days ago';
    if (diff.inMinutes >= 60) {
      return '${(diff.inMinutes / 60).floor()} hours ago';
    }
    if (diff.inSeconds >= 60) {
      return '${(diff.inSeconds / 60).floor()} mins ago';
    }
    return '${diff.inSeconds} sec ago';
  }
}
