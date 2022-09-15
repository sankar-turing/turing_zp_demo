import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turing_zp_demo/cubits/notifications/notification_cubit.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/notifications/notification_utils.dart';
import 'package:turing_zp_demo/screens/home/tabs/home_tab.dart';
import 'package:turing_zp_demo/screens/home/tabs/notification_tab.dart';
import 'package:turing_zp_demo/screens/home/tabs/order_tab.dart';
import 'package:turing_zp_demo/screens/home/tabs/profile_tab.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    this.initialIndex = 0,
  }) : super(key: key);

  final int initialIndex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  String fcmToken = '';
  late int _currentIndex;
  late TabController tabController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: widget.initialIndex,
    );

    // NotificationUtils().setUpNotifications();
    getIt<NotificationCubit>().registerToken(null);
    getIt<NotificationCubit>().getSimpleNotifications(offset: 0);
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      // getIt<NotificationCubit>().getSimpleNotifications(offset: 0);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zuellig Pharma'),
      ),
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomeTab(
            fcmToken: fcmToken,
          ),
          const OrderTab(),
          const NotificationTab(),
          const ProfileTab(),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          tabController.animateTo(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: context.loc.home,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.work_history),
            label: context.loc.orders,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: BlocBuilder<NotificationCubit, NotificationState>(
              bloc: getIt<NotificationCubit>(),
              builder: (context, state) => Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Icon(
                      Icons.notifications,
                    ),
                    if (state.unreadCount != 0)
                      Positioned(
                        top: -4.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFC1CE42),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '${state.unreadCount}',
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            label: context.loc.notifications,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: context.loc.profile,
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
      floatingActionButton: (_currentIndex == 0)
          ? FloatingActionButton(
              onPressed: () async {
                fcmToken = await NotificationUtils.getDeviceToken() ?? '';
                setState(() {});
                print(fcmToken);
              },
              tooltip: context.loc.getToken,
              child: const Icon(Icons.refresh),
            )
          : null, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
