import 'dart:developer';

import 'package:dio/dio.dart';
import '../../../constants.dart';
import '../firebase/push_notification_services.dart';

abstract class APINotificationServices {
  static final Dio _dio = Dio();

  static Future<void> sendNotification({
    required String? title,
    required String? body,
  }) async {
    // we need to get token first
    String? token = await PushNotificationServices.firebaseMessaging.getToken();
    log(token!);
    try {
      final response = await _dio.post(
        AppConstants.baseUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer ya29.a0AS3H6NwD0c1-uT4NopKxuslrvZDqoM-lKwqWG1_q-3jOXo2arc4b8CMTxHSrVt-4WfgPRzsf2bomOIkZe9Oq_ppPOmOOWgnT35WJFjRRbhxxiG-quzpLQjGqqLVn88oymR8L2cBCa2tmWoedyjLQpUP0lXOSO6VgZ3kGZBQ0aCgYKAawSARQSFQHGX2MiHV97HAhHDtgcQZVdX6f0-g0175',
          },
        ),
        data: {
          "message": {
            "token": token,
            "notification": {
              "title": "Order Status Update",
              "body": "Your order changed from $title to $body",
            },
          },
        },
      );
      log(response.toString());
    } catch (e) {
      return;
    }
  }
}
