// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clear_notification.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MutationClearNotification _$MutationClearNotificationFromJson(
        Map<String, dynamic> json) =>
    MutationClearNotification(
      clearNotification: json['clearNotification'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationClearNotificationToJson(
        MutationClearNotification instance) =>
    <String, dynamic>{
      'clearNotification': instance.clearNotification,
      '__typename': instance.$__typename,
    };
