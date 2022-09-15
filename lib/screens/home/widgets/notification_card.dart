import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:turing_zp_demo/cubits/notifications/notification_cubit.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/models/graphql/simple_notifications.graphql.dart';
import 'package:turing_zp_demo/notifications/notification_navigator.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
    required this.notificationData,
  }) : super(key: key);

  final QuerySimpleNotificationssimpleNotificationsnotifications?
      notificationData;

  @override
  Widget build(BuildContext context) {
    bool isRead = notificationData?.status ?? false;

    return InkWell(
      onTap: () {
        if (!isRead) {
          getIt<NotificationCubit>()
              .markNotificationRead(notificationData?.id ?? 0);
        }
        NotificationNavigator.navigateOnTap(
          {
            'page': 'order_detail',
            'data': notificationData?.toJson(),
          },
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5.0,
        child: Container(
          height: 100.0,
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 18.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.info,
                color: Color(
                  0xFFFEC600,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#${notificationData?.orderId ?? ''}',
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      notificationData?.orderDescription ?? '',
                      style: const TextStyle(
                        color: Color(0xFF151515),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      notificationData?.orderDescription ?? '',
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 18.0),
              Row(
                children: [
                  Text(
                    DateFormat('dd MMM yy').format(DateTime.tryParse(
                            notificationData?.createdTime ?? '') ??
                        DateTime.now()),
                    style: const TextStyle(
                      color: Color(0xFFB1B1B1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(width: 8.0),
                  if (!isRead)
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2D5E64),
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
