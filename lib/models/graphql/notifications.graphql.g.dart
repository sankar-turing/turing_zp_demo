// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$QueryNotifications _$Variables$QueryNotificationsFromJson(
        Map<String, dynamic> json) =>
    Variables$QueryNotifications(
      count: json['count'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$Variables$QueryNotificationsToJson(
        Variables$QueryNotifications instance) =>
    <String, dynamic>{
      'count': instance.count,
      'offset': instance.offset,
    };

QueryNotifications _$QueryNotificationsFromJson(Map<String, dynamic> json) =>
    QueryNotifications(
      notifications: QueryNotificationsnotifications.fromJson(
          json['notifications'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryNotificationsToJson(QueryNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications.toJson(),
      '__typename': instance.$__typename,
    };

QueryNotificationsnotifications _$QueryNotificationsnotificationsFromJson(
        Map<String, dynamic> json) =>
    QueryNotificationsnotifications(
      $__typename: json['__typename'] as String,
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => QueryNotificationsnotificationsnotifications.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      nextOffset: json['nextOffset'] as int,
    );

Map<String, dynamic> _$QueryNotificationsnotificationsToJson(
        QueryNotificationsnotifications instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'notifications': instance.notifications?.map((e) => e.toJson()).toList(),
      'nextOffset': instance.nextOffset,
    };

QueryNotificationsnotificationsnotifications
    _$QueryNotificationsnotificationsnotificationsFromJson(
            Map<String, dynamic> json) =>
        QueryNotificationsnotificationsnotifications(
          id: json['id'] as String,
          title: json['title'] as String,
          body: json['body'] as String,
          userId: json['userId'] as int,
          read: json['read'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryNotificationsnotificationsnotificationsToJson(
        QueryNotificationsnotificationsnotifications instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
      'read': instance.read,
      '__typename': instance.$__typename,
    };
