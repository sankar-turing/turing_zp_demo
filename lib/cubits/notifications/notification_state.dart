part of 'notification_cubit.dart';

class NotificationState extends Equatable {
  const NotificationState({
    this.loading = false,
    this.notificationsList,
    this.unreadCount = 0,
    this.nextOffset = 0,
  });

  final bool loading;
  final List<QuerySimpleNotificationssimpleNotificationsnotifications>?
      notificationsList;
  final int unreadCount;
  final int nextOffset;

  NotificationState copyWith({
    bool? loading,
    List<QuerySimpleNotificationssimpleNotificationsnotifications>?
        notificationsList,
    int? unreadCount,
    int? nextOffset,
  }) {
    return NotificationState(
      loading: loading ?? this.loading,
      notificationsList: notificationsList ?? this.notificationsList,
      unreadCount: unreadCount ?? this.unreadCount,
      nextOffset: nextOffset ?? this.nextOffset,
    );
  }

  @override
  List<Object?> get props => [
        loading,
        notificationsList,
        unreadCount,
        nextOffset,
      ];
}
