import 'dart:convert';
import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:turing_zp_demo/utils/extensions.dart';

class NotificationService {
  String serverKey =
      "AAAAfNXBUok:APA91bE9od_gSm0qaJwPiY5_7MMUfit5AjFL0A2IgCr-aPiwIApkBjF9jkVEYCRdH3g-9vVW5e4y3XCRiQkrsaFUzG0fPkVFGBEZ3_6aGKs6hDEgzHA3os7zlc2p_ggOhz06N-vrqdTi";

  sendLocalNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: Random().nextInt(1000),
      channelKey: 'zp_channel',
      title: Get.context?.loc.simple_notification,
      body: Get.context?.loc.simple_body,
    ));
  }

  sendNotification(String type) async {
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'key=$serverKey'
        },
        body: jsonEncode(
          <String, dynamic>{
            'notification': <String, dynamic>{
              'title': '$type ${Get.context?.loc.notification}',
              'body': Get.context?.loc.notification_body,
            },
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'id': Random().nextInt(1000),
              'status': 'done',
              'type': type,
              'offer': Get.context?.loc.hardcoded_text,
            },
            'to': token,
          },
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  showToast() {
    Fluttertoast.showToast(
      msg: Get.context?.loc.sample_message ?? '',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  showSnackBar() {
    Get.snackbar(
      Get.context?.loc.this_is_a_title ?? '',
      Get.context?.loc.this_is_the_body ?? '',
      backgroundColor: Colors.green.shade300,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  showPopup(String title, String content) {
    Get.defaultDialog(
      titlePadding: const EdgeInsets.all(15),
      title: title,
      content: Text(content),
      confirm: TextButton(
        onPressed: () => Get.back(),
        child: Text(
          Get.context?.loc.ok ?? '',
        ),
      ),
    );
  }
}
