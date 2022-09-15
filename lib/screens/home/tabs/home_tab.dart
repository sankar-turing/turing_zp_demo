import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turing_zp_demo/services/notification_service.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class HomeTab extends StatelessWidget {
  HomeTab({
    Key? key,
    required this.fcmToken,
  }) : super(key: key);

  final String fcmToken;

  final notificationService = Get.find<NotificationService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${context.loc.token}: ',
            ),
            SelectableText(
              fcmToken,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text('Notifications', textScaleFactor: 1.75),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.sendLocalNotification(),
              child: const Text('Send a local notification'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async => await notificationService.sendNotification('Cloud'),
              child: const Text('Send a Push notification'),
            ),
            const Divider(height: 50),
            const Text('In-App Messaging', textScaleFactor: 1.75),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async => await notificationService.sendNotification('inapp'),
              child: const Text('Send custom in-app message'),
            ),
            const Divider(height: 50),
            const Text('Other Local Notifiers', textScaleFactor: 1.75),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.showSnackBar(),
              child: const Text('Show snack-bar'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.showToast(),
              child: const Text('Show toast'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.showPopup('Sample popup', 'This is a sample dialog'),
              child: const Text('Show popup'),
            ),
          ],
        ),
      ),
    );
  }
}
