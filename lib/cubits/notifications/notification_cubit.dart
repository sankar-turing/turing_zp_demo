import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:turing_zp_demo/cubits/language/language_cubit.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/models/graphql/clear_notification.graphql.dart';
import 'package:turing_zp_demo/models/graphql/mark_read.graphql.dart';
import 'package:turing_zp_demo/models/graphql/register_token.graphql.dart';
import 'package:turing_zp_demo/models/graphql/schema.graphql.dart';
import 'package:turing_zp_demo/models/graphql/simple_notifications.graphql.dart';
import 'package:turing_zp_demo/notifications/notification_utils.dart';

part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(const NotificationState(loading: false));

  List<QuerySimpleNotificationssimpleNotificationsnotifications>
      notificationsList = [];

  bool canAdd = true;

  Future<void> getSimpleNotifications({int? offset}) async {
    int currentOffset = offset ?? state.nextOffset;
    if (currentOffset >= 0 && canAdd) {
      if (currentOffset == 0) {
        emit(state.copyWith(loading: true));
      }
      canAdd = false;
      final response = await getIt<GraphQLClient>().querySimpleNotifications(
        Options$QuerySimpleNotifications(
          variables: Variables$QuerySimpleNotifications(
            input: InputNotificationList(
              count: 5,
              offset: currentOffset,
              langCode:
                  getIt<LanguageCubit>().state.locale?.languageCode ?? 'en',
            ),
          ),
        ),
      );
      if (currentOffset == 0) {
        notificationsList =
            response.parsedData?.simpleNotifications.notifications ?? [];
      } else {
        notificationsList.addAll(
            response.parsedData?.simpleNotifications.notifications ?? []);
      }
      canAdd = true;
      int unreadCount = 0;
      notificationsList.forEach((notificationData) {
        if (!notificationData.status) {
          unreadCount++;
        }
      });

      emit(
        state.copyWith(
          loading: false,
          notificationsList: notificationsList,
          unreadCount: unreadCount,
          nextOffset: response.parsedData?.simpleNotifications.nextOffset ??
              currentOffset,
        ),
      );
    }
  }

  Future<void> markNotificationRead(int id) async {
    await getIt<GraphQLClient>().mutateMarkReadMutation(
      Options$MutationMarkReadMutation(
        variables: Variables$MutationMarkReadMutation(
          input: InputMarkRead(id: id),
        ),
      ),
    );
    getSimpleNotifications(offset: 0);
  }

  Future<void> clearAllNotifications() async {
    emit(state.copyWith(loading: true));
    await getIt<GraphQLClient>().mutateClearNotification();
    emit(
      state.copyWith(
        loading: false,
      ),
    );
    getSimpleNotifications(offset: 0);
  }

  Future<void> registerToken(String? token) async {
    emit(state.copyWith(loading: true));
    final String deviceToken =
        token ?? await NotificationUtils.getDeviceToken() ?? '';
    await getIt<GraphQLClient>().mutateRegisterTokenMutation(
      Options$MutationRegisterTokenMutation(
        variables: Variables$MutationRegisterTokenMutation(
          input: InputRegisterToken(
            token: deviceToken,
            userId: 1,
          ),
        ),
      ),
    );
    emit(state.copyWith(loading: false));
  }
}
