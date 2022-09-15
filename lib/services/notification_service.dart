import 'dart:convert';
import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NotificationService {
  String serverKey = "AAAAfNXBUok:APA91bE9od_gSm0qaJwPiY5_7MMUfit5AjFL0A2IgCr-aPiwIApkBjF9jkVEYCRdH3g-9vVW5e4y3XCRiQkrsaFUzG0fPkVFGBEZ3_6aGKs6hDEgzHA3os7zlc2p_ggOhz06N-vrqdTi";

  sendLocalNotification() {
    AwesomeNotifications().createNotification(content: NotificationContent(id: Random().nextInt(1000), channelKey: 'zp_channel', title: 'Simple Notification', body: 'Simple body'));
  }

  sendNotification(String type) async {
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{'Content-Type': 'application/json', 'Authorization': 'key=$serverKey'},
        body: jsonEncode(
          <String, dynamic>{
            'notification': <String, dynamic>{'title': '$type notification', 'body': 'This is the notification body'},
            'priority': 'high',
            'data': <String, dynamic>{'click_action': 'FLUTTER_NOTIFICATION_CLICK', 'id': Random().nextInt(1000), 'status': 'done', 'type': type, 'offer': 'This is a text is hardcoded for this button click. This box will show actual text when initiated from the console.'},
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
      msg: "Sample message",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  showSnackBar() {
    Get.snackbar(
      'This is a title',
      'This is the body',
      backgroundColor: Colors.green.shade300,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  showPopup(String title, String content) {
    Get.defaultDialog(
      titlePadding: const EdgeInsets.all(15),
      title: title,
      content: Text(content),
      confirm: TextButton(onPressed: () => Get.back(), child: const Text('OK')),
    );
  }
}
