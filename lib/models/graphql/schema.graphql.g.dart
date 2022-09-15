// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputMarkRead _$InputMarkReadFromJson(Map<String, dynamic> json) =>
    InputMarkRead(
      id: json['id'] as int,
    );

Map<String, dynamic> _$InputMarkReadToJson(InputMarkRead instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputNewNotification _$InputNewNotificationFromJson(
        Map<String, dynamic> json) =>
    InputNewNotification(
      body: json['body'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$InputNewNotificationToJson(
        InputNewNotification instance) =>
    <String, dynamic>{
      'body': instance.body,
      'id': instance.id,
      'title': instance.title,
      'userId': instance.userId,
    };

InputNewSimpleNotification _$InputNewSimpleNotificationFromJson(
        Map<String, dynamic> json) =>
    InputNewSimpleNotification(
      hyperLink: json['hyperLink'] as String,
      langCode: json['langCode'] as String,
      orderDescription: json['orderDescription'] as String,
      orderId: json['orderId'] as int,
      orderType: json['orderType'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$InputNewSimpleNotificationToJson(
        InputNewSimpleNotification instance) =>
    <String, dynamic>{
      'hyperLink': instance.hyperLink,
      'langCode': instance.langCode,
      'orderDescription': instance.orderDescription,
      'orderId': instance.orderId,
      'orderType': instance.orderType,
      'userId': instance.userId,
    };

InputNotificationList _$InputNotificationListFromJson(
        Map<String, dynamic> json) =>
    InputNotificationList(
      count: json['count'] as int?,
      langCode: json['langCode'] as String?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$InputNotificationListToJson(
        InputNotificationList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'langCode': instance.langCode,
      'offset': instance.offset,
    };

InputRegisterToken _$InputRegisterTokenFromJson(Map<String, dynamic> json) =>
    InputRegisterToken(
      token: json['token'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$InputRegisterTokenToJson(InputRegisterToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
    };
