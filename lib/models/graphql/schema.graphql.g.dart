// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputClearNotificationIn _$InputClearNotificationInFromJson(
        Map<String, dynamic> json) =>
    InputClearNotificationIn(
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$InputClearNotificationInToJson(
        InputClearNotificationIn instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

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

InputNewOrder _$InputNewOrderFromJson(Map<String, dynamic> json) =>
    InputNewOrder(
      products: (json['products'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : InputProductDetailIn.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      totalCost: (json['totalCost'] as num).toDouble(),
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$InputNewOrderToJson(InputNewOrder instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e?.toJson()).toList(),
      'status': instance.status,
      'totalCost': instance.totalCost,
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
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$InputNotificationListToJson(
        InputNotificationList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'langCode': instance.langCode,
      'offset': instance.offset,
      'userId': instance.userId,
    };

InputOrderListingQuery _$InputOrderListingQueryFromJson(
        Map<String, dynamic> json) =>
    InputOrderListingQuery(
      count: json['count'] as int?,
      offset: json['offset'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$InputOrderListingQueryToJson(
        InputOrderListingQuery instance) =>
    <String, dynamic>{
      'count': instance.count,
      'offset': instance.offset,
      'userId': instance.userId,
    };

InputProductDetailIn _$InputProductDetailInFromJson(
        Map<String, dynamic> json) =>
    InputProductDetailIn(
      count: json['count'] as int,
      name: json['name'] as String,
      pricePerUnit: (json['pricePerUnit'] as num).toDouble(),
    );

Map<String, dynamic> _$InputProductDetailInToJson(
        InputProductDetailIn instance) =>
    <String, dynamic>{
      'count': instance.count,
      'name': instance.name,
      'pricePerUnit': instance.pricePerUnit,
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
