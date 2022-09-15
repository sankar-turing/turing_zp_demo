// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_notification.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$MutationCreateNotification
    _$Variables$MutationCreateNotificationFromJson(Map<String, dynamic> json) =>
        Variables$MutationCreateNotification(
          input: InputNewNotification.fromJson(
              json['input'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Variables$MutationCreateNotificationToJson(
        Variables$MutationCreateNotification instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

MutationCreateNotification _$MutationCreateNotificationFromJson(
        Map<String, dynamic> json) =>
    MutationCreateNotification(
      createNotification: MutationCreateNotificationcreateNotification.fromJson(
          json['createNotification'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateNotificationToJson(
        MutationCreateNotification instance) =>
    <String, dynamic>{
      'createNotification': instance.createNotification.toJson(),
      '__typename': instance.$__typename,
    };

MutationCreateNotificationcreateNotification
    _$MutationCreateNotificationcreateNotificationFromJson(
            Map<String, dynamic> json) =>
        MutationCreateNotificationcreateNotification(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          title: json['title'] as String,
          body: json['body'] as String,
          userId: json['userId'] as int,
          read: json['read'] as bool,
        );

Map<String, dynamic> _$MutationCreateNotificationcreateNotificationToJson(
        MutationCreateNotificationcreateNotification instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
      'read': instance.read,
    };
