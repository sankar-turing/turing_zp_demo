import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:turing_zp_demo/models/graphql/simple_notifications.graphql.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({
    Key? key,
    required this.notificationData,
  }) : super(key: key);

  final QuerySimpleNotificationssimpleNotificationsnotifications?
      notificationData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('${context.loc.orderDetail} - #${notificationData?.orderId}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#${notificationData?.orderId ?? ''}',
              style: const TextStyle(
                color: Color(0xFF666666),
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              notificationData?.orderType ?? '',
              style: const TextStyle(
                color: Color(0xFF666666),
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '${context.loc.status} - ${notificationData?.orderDescription ?? ''}',
              style: const TextStyle(
                color: Color(0xFF151515),
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              DateFormat('dd MMMM yyyy').format(
                  DateTime.tryParse(notificationData?.createdTime ?? '') ??
                      DateTime.now()),
              style: const TextStyle(
                color: Color(0xFF666666),
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
