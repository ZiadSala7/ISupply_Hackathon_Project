import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:isupply_hackathon_project/firebase_options.dart';
import 'package:isupply_hackathon_project/my_notification_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyNotificationApp());
}
