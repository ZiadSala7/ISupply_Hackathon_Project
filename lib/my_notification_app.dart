import 'package:flutter/material.dart';
import 'package:isupply_hackathon_project/core/utils/app_routes.dart';

class MyNotificationApp extends StatelessWidget {
  const MyNotificationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.appRoutes,
    );
  }
}
