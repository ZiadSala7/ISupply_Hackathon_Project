import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/firebase/local_notifications_services.dart';
import 'core/firebase/push_notification_services.dart';
import 'firebase_options.dart';
import 'my_notification_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // for a high performance => will take the max time not the sum
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Future.wait([
    PushNotificationServices.init(),
    LocalNotificationsServices.init(),
  ]);
  runApp(const MyNotificationApp());
}
