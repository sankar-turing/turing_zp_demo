import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:turing_zp_demo/cubits/notifications/notification_cubit.dart';
// import 'package:turing_zp_demo/di/dependency_injection.dart';
// import 'package:turing_zp_demo/notifications/notification_navigator.dart';

class NotificationUtils {
  static Future<String?> getDeviceToken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  // void setUpNotifications() async {
  //   await checkPermissions();
  //   await setUpNotificationTap();
  //   FirebaseMessaging.instance.onTokenRefresh.listen((token) {
  //     getIt<NotificationCubit>().registerToken(token);
  //   });
  // }
  //
  // Future<void> checkPermissions() async {
  //   var settings = await FirebaseMessaging.instance.getNotificationSettings();
  //   if (settings.authorizationStatus == AuthorizationStatus.notDetermined) {
  //     await FirebaseMessaging.instance.requestPermission(
  //       alert: true,
  //       announcement: false,
  //       badge: true,
  //       carPlay: false,
  //       criticalAlert: false,
  //       provisional: true,
  //       sound: true,
  //     );
  //   }
  // }
  //
  // static Future<void> setUpOnReceiveNotification() async {
  //   await FirebaseMessaging.instance
  //       .setForegroundNotificationPresentationOptions(
  //     alert: true,
  //     badge: true,
  //     sound: true,
  //   );
  //
  //   const initializationSettingsAndroid =
  //       AndroidInitializationSettings('ic_launcher');
  //
  //   const initializationSettingsIOS = IOSInitializationSettings();
  //
  //   const initializationSettings = InitializationSettings(
  //       android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  //
  //   final localNotifications = FlutterLocalNotificationsPlugin()
  //     ..initialize(
  //       initializationSettings,
  //       onSelectNotification: (payload) => navigatorOnTap(
  //         jsonDecode(payload!),
  //       ),
  //     );
  //
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) =>
  //       onReceivedNotification(message, localNotifications));
  //
  //   FirebaseMessaging.onBackgroundMessage((RemoteMessage message) =>
  //       onReceivedNotification(message, localNotifications));
  // }
  //
  // static Future<void> onReceivedNotification(RemoteMessage message,
  //     FlutterLocalNotificationsPlugin localNotifications) async {
  //   var notification = message.notification;
  //   var android = message.notification?.android;
  //
  //   const channel = AndroidNotificationChannel(
  //     'high_importance_channel',
  //     'High Importance Notifications',
  //     description: 'This channel is used for important notifications.',
  //     importance: Importance.max,
  //   );
  //
  //   await localNotifications
  //       .resolvePlatformSpecificImplementation<
  //           AndroidFlutterLocalNotificationsPlugin>()
  //       ?.createNotificationChannel(channel);
  //
  //   if (notification != null && android != null) {
  //     localNotifications.show(
  //       DateTime.now().hashCode,
  //       notification.title,
  //       notification.body,
  //       NotificationDetails(
  //         android: AndroidNotificationDetails(
  //           channel.id,
  //           channel.name,
  //           channelDescription: channel.description,
  //           icon: android.smallIcon,
  //         ),
  //       ),
  //       payload: jsonEncode(message.data),
  //     );
  //   }
  // }
  //
  // Future<void> setUpNotificationTap() async {
  //   var initialMessage = await FirebaseMessaging.instance.getInitialMessage();
  //   if (initialMessage != null) {
  //     handleMessage(initialMessage);
  //   }
  //   FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  // }
  //
  // static void handleMessage(RemoteMessage message) async {
  //   navigatorOnTap(message.data);
  // }
  //
  // static void navigatorOnTap(Map<String, dynamic> data) {
  //   NotificationNavigator.navigateOnTap(data);
  // }
}
