import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../../constants.dart';

abstract class LocalNotificationsServices {
  static FlutterLocalNotificationsPlugin localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    await localNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  static onTap(NotificationResponse response) {}

  static Future showBasicNotification(RemoteMessage message) async {
    NotificationDetails details = NotificationDetails(
      android: AppConstants.android,
    );
    await localNotificationsPlugin.show(
      1,
      message.notification!.title,
      message.notification!.body,
      details,
      payload: 'Payload data',
    );
  }
}
