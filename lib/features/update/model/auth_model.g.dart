// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => _AuthModel(
  fullName: json['full_name'] as String?,
  userName: json['user_name'] as String?,
  typeName: json['type_name'] as String?,
  typeId: (json['type_id'] as num?)?.toInt(),
  tokenVal: json['token_val'] as String?,
);

Map<String, dynamic> _$AuthModelToJson(_AuthModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'user_name': instance.userName,
      'type_name': instance.typeName,
      'type_id': instance.typeId,
      'token_val': instance.tokenVal,
    };
