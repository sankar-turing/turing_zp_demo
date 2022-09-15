// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_notifications.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$QuerySimpleNotifications _$Variables$QuerySimpleNotificationsFromJson(
        Map<String, dynamic> json) =>
    Variables$QuerySimpleNotifications(
      input: json['input'] == null
          ? null
          : InputNotificationList.fromJson(
              json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$QuerySimpleNotificationsToJson(
        Variables$QuerySimpleNotifications instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

QuerySimpleNotifications _$QuerySimpleNotificationsFromJson(
        Map<String, dynamic> json) =>
    QuerySimpleNotifications(
      simpleNotifications: QuerySimpleNotificationssimpleNotifications.fromJson(
          json['simpleNotifications'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QuerySimpleNotificationsToJson(
        QuerySimpleNotifications instance) =>
    <String, dynamic>{
      'simpleNotifications': instance.simpleNotifications.toJson(),
      '__typename': instance.$__typename,
    };

QuerySimpleNotificationssimpleNotifications
    _$QuerySimpleNotificationssimpleNotificationsFromJson(
            Map<String, dynamic> json) =>
        QuerySimpleNotificationssimpleNotifications(
          $__typename: json['__typename'] as String,
          nextOffset: json['nextOffset'] as int,
          notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) =>
                  QuerySimpleNotificationssimpleNotificationsnotifications
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$QuerySimpleNotificationssimpleNotificationsToJson(
        QuerySimpleNotificationssimpleNotifications instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'nextOffset': instance.nextOffset,
      'notifications': instance.notifications?.map((e) => e.toJson()).toList(),
    };

QuerySimpleNotificationssimpleNotificationsnotifications
    _$QuerySimpleNotificationssimpleNotificationsnotificationsFromJson(
            Map<String, dynamic> json) =>
        QuerySimpleNotificationssimpleNotificationsnotifications(
          createdTime: json['createdTime'] as String,
          hyperLink: json['hyperLink'] as String,
          id: json['id'] as int,
          langCode: json['langCode'] as String,
          orderDescription: json['orderDescription'] as String,
          orderId: json['orderId'] as int,
          orderType: json['orderType'] as String,
          status: json['status'] as bool,
          userId: json['userId'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$QuerySimpleNotificationssimpleNotificationsnotificationsToJson(
        QuerySimpleNotificationssimpleNotificationsnotifications instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime,
      'hyperLink': instance.hyperLink,
      'id': instance.id,
      'langCode': instance.langCode,
      'orderDescription': instance.orderDescription,
      'orderId': instance.orderId,
      'orderType': instance.orderType,
      'status': instance.status,
      'userId': instance.userId,
      '__typename': instance.$__typename,
    };
