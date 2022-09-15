// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_simple_notification.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$MutationCreateSimpleNotification
    _$Variables$MutationCreateSimpleNotificationFromJson(
            Map<String, dynamic> json) =>
        Variables$MutationCreateSimpleNotification(
          input: json['input'] == null
              ? null
              : InputNewSimpleNotification.fromJson(
                  json['input'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Variables$MutationCreateSimpleNotificationToJson(
        Variables$MutationCreateSimpleNotification instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

MutationCreateSimpleNotification _$MutationCreateSimpleNotificationFromJson(
        Map<String, dynamic> json) =>
    MutationCreateSimpleNotification(
      createSimpleNotification:
          MutationCreateSimpleNotificationcreateSimpleNotification.fromJson(
              json['createSimpleNotification'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateSimpleNotificationToJson(
        MutationCreateSimpleNotification instance) =>
    <String, dynamic>{
      'createSimpleNotification': instance.createSimpleNotification.toJson(),
      '__typename': instance.$__typename,
    };

MutationCreateSimpleNotificationcreateSimpleNotification
    _$MutationCreateSimpleNotificationcreateSimpleNotificationFromJson(
            Map<String, dynamic> json) =>
        MutationCreateSimpleNotificationcreateSimpleNotification(
          $__typename: json['__typename'] as String,
          id: json['id'] as int,
          orderId: json['orderId'] as int,
          orderType: json['orderType'] as String,
          status: json['status'] as bool,
          orderDescription: json['orderDescription'] as String,
          hyperLink: json['hyperLink'] as String,
          createdTime: json['createdTime'] as String,
          userId: json['userId'] as int,
        );

Map<String,
    dynamic> _$MutationCreateSimpleNotificationcreateSimpleNotificationToJson(
        MutationCreateSimpleNotificationcreateSimpleNotification instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'orderId': instance.orderId,
      'orderType': instance.orderType,
      'status': instance.status,
      'orderDescription': instance.orderDescription,
      'hyperLink': instance.hyperLink,
      'createdTime': instance.createdTime,
      'userId': instance.userId,
    };
