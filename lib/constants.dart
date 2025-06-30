import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'core/utils/app_colors.dart';

abstract class AppConstants {
  static AndroidNotificationDetails android = const AndroidNotificationDetails(
    'Id 1',
    'Isupply',
    importance: Importance.max,
    priority: Priority.high,
  );

  static const Map<String, int> states = {
    'Pending': 1,
    'Confirmed': 2,
    'Shipped': 3,
    'Delivered': 4,
  };

  static const Map<int, Color> checkBoxClrs = {
    1: AppColors.greyButton,
    2: AppColors.greenButton,
    3: AppColors.blueButton,
    4: AppColors.orangButton,
  };
}
