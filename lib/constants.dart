import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class AppConstants {
  static AndroidNotificationDetails android = const AndroidNotificationDetails(
    'Id 1',
    'Isupply',
    importance: Importance.max,
    priority: Priority.high,
  );

  static const String baseUrl =
      'https://fcm.googleapis.com/v1/projects/sign-in-25b87/messages:send';
}
