// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'shuttle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShuttleModel _$$_ShuttleModelFromJson(Map<String, dynamic> json) =>
    _$_ShuttleModel(
      id: json['id'] as int,
      name: json['name'] as String,
      emailPrefixList: (json['emailPrefixList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ShuttleModelToJson(_$_ShuttleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emailPrefixList': instance.emailPrefixList,
    };
