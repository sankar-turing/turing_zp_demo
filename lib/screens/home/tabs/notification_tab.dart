import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turing_zp_demo/cubits/notifications/notification_cubit.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/screens/home/widgets/notification_card.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class NotificationTab extends StatefulWidget {
  const NotificationTab({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationTab> createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  late NotificationCubit notificationCubit;
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    notificationCubit = getIt<NotificationCubit>();
    notificationCubit.getSimpleNotifications(offset: 0);
    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (controller.position.extentAfter < 500) {
      notificationCubit.getSimpleNotifications();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BlocBuilder<NotificationCubit, NotificationState>(
        bloc: notificationCubit,
        builder: (context, state) {
          final int notificationLength = state.notificationsList?.length ?? 0;
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.loc.notifications,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    color: Color(0xFF234455),
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: state.loading
                      ? const Center(child: CircularProgressIndicator())
                      : notificationLength > 0
                          ? ListView.builder(
                              controller: controller,
                              itemCount: notificationLength,
                              itemBuilder: (context, index) {
                                return NotificationCard(
                                  notificationData:
                                      state.notificationsList?[index],
                                );
                              },
                            )
                          : Center(
                              child: Text(
                                context.loc.noNotificationAvailable,
                                style: const TextStyle(
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                ),
                if (notificationLength > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Material(
                          child: InkWell(
                            onTap: () {
                              getIt<NotificationCubit>()
                                  .clearAllNotifications();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF234455),
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 24.0,
                              ),
                              child: Text(
                                context.loc.clearNotifications,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                  color: Color(0xFF234455),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
