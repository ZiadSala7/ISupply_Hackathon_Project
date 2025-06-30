import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/services/firebase/local_notifications_services.dart';
import 'core/services/firebase/push_notification_services.dart';
import 'firebase_options.dart';
import 'my_notification_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // for a high performance => will take the max time not the sum
  String? token = await PushNotificationServices.firebaseMessaging.getToken();
  log(token!);
  Future.wait([
    PushNotificationServices.init(),
    LocalNotificationsServices.init(),
  ]);
  runApp(const MyNotificationApp());
}
