import 'package:flutter/material.dart';
import 'core/utils/app_routes.dart';

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
