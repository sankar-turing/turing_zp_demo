// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_token.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$MutationRegisterTokenMutation
    _$Variables$MutationRegisterTokenMutationFromJson(
            Map<String, dynamic> json) =>
        Variables$MutationRegisterTokenMutation(
          input: json['input'] == null
              ? null
              : InputRegisterToken.fromJson(
                  json['input'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Variables$MutationRegisterTokenMutationToJson(
        Variables$MutationRegisterTokenMutation instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

MutationRegisterTokenMutation _$MutationRegisterTokenMutationFromJson(
        Map<String, dynamic> json) =>
    MutationRegisterTokenMutation(
      registerToken: json['registerToken'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationRegisterTokenMutationToJson(
        MutationRegisterTokenMutation instance) =>
    <String, dynamic>{
      'registerToken': instance.registerToken,
      '__typename': instance.$__typename,
    };
