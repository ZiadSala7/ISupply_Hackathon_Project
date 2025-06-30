import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'local_notifications_services.dart';

abstract class PushNotificationServices {
  static final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  static Future<void> init() async {
    // request permissions
    await firebaseMessaging.requestPermission();
    // background state of the app
    FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
    // foreground state of the app
    await sendNotification(RemoteMessage());
  }

  static Future sendNotification(RemoteMessage message) async {
    FirebaseMessaging.onMessage.listen((message) {
      LocalNotificationsServices.showBasicNotification(message);
    });
  }

  // background notification method
  static Future<void> backgroundMessageHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
    
  }
}
