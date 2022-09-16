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
            Text(
              context.loc.notifications,
              textScaleFactor: 1.75,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.sendLocalNotification(),
              child: Text(
                context.loc.send_a_local_notification,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async => await notificationService.sendNotification(
                context.loc.cloud,
              ),
              child: Text(
                context.loc.send_a_push_notification,
              ),
            ),
            const Divider(height: 50),
            Text(
              context.loc.in_app_messaging,
              textScaleFactor: 1.75,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async => await notificationService.sendNotification(
                'inapp',
              ),
              child: Text(
                context.loc.send_custom_in_app_message,
              ),
            ),
            const Divider(height: 50),
            Text(
              context.loc.other_local_notifiers,
              textScaleFactor: 1.75,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.showSnackBar(),
              child: Text(
                context.loc.show_snack_bar,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.showToast(),
              child: Text(
                context.loc.show_toast,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => notificationService.showPopup(
                context.loc.sample_popup,
                context.loc.this_is_a_sample_dialog,
              ),
              child: Text(
                context.loc.show_popup,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
