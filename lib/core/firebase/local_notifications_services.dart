import 'dart:async';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:isupply_hackathon_project/constants.dart';

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

  static onTap(NotificationResponse response) {
    log('This : ${response.input}');
  }

  static Future showBasicNotification(RemoteMessage message) async {
    NotificationDetails details = NotificationDetails(android: android);
    await localNotificationsPlugin.show(
      1,
      'Order Status Update',
      'Your order changed from ${message.notification!.title} to ${message.notification!.body}',
      details,
      payload: 'Payload data',
    );
    log('This is : ${message.notification!.body!}');
  }
}
