// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_read.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$MutationMarkReadMutation _$Variables$MutationMarkReadMutationFromJson(
        Map<String, dynamic> json) =>
    Variables$MutationMarkReadMutation(
      input: json['input'] == null
          ? null
          : InputMarkRead.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$MutationMarkReadMutationToJson(
        Variables$MutationMarkReadMutation instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

MutationMarkReadMutation _$MutationMarkReadMutationFromJson(
        Map<String, dynamic> json) =>
    MutationMarkReadMutation(
      markRead: MutationMarkReadMutationmarkRead.fromJson(
          json['markRead'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationMarkReadMutationToJson(
        MutationMarkReadMutation instance) =>
    <String, dynamic>{
      'markRead': instance.markRead.toJson(),
      '__typename': instance.$__typename,
    };

MutationMarkReadMutationmarkRead _$MutationMarkReadMutationmarkReadFromJson(
        Map<String, dynamic> json) =>
    MutationMarkReadMutationmarkRead(
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

Map<String, dynamic> _$MutationMarkReadMutationmarkReadToJson(
        MutationMarkReadMutationmarkRead instance) =>
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
