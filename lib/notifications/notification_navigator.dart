import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turing_zp_demo/models/graphql/simple_notifications.graphql.dart';
import 'package:turing_zp_demo/screens/home/home_screen.dart';
import 'package:turing_zp_demo/screens/order_screen.dart';

class NotificationNavigator {
  static void navigateOnTap(Map<String, dynamic> payload) {
    switch (payload['page'] ?? '') {
      case 'home':
        Navigator.push(
          Get.context!,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(
              initialIndex: 0,
            ),
          ),
        );
        break;
      case 'order':
        Navigator.push(
          Get.context!,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(
              initialIndex: 1,
            ),
          ),
        );
        break;
      case 'order_detail':
        Navigator.push(
          Get.context!,
          MaterialPageRoute(
            builder: (context) => OrderDetailScreen(
              notificationData:
                  QuerySimpleNotificationssimpleNotificationsnotifications
                      .fromJson(
                payload['data'] ?? {},
              ),
            ),
          ),
        );
        break;
      default:
        Navigator.push(
          Get.context!,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(
              initialIndex: 2,
            ),
          ),
        );
    }
  }
}
