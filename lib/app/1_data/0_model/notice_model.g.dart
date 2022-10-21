// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeModel _$$_NoticeModelFromJson(Map<String, dynamic> json) =>
    _$_NoticeModel(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      writer: json['writer'] as String,
      viewCount: json['viewCount'] as int,
      webLink: json['webLink'] as String,
      regDate: DateTime.parse(json['regDate'] as String),
    );

Map<String, dynamic> _$$_NoticeModelToJson(_$_NoticeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'writer': instance.writer,
      'viewCount': instance.viewCount,
      'webLink': instance.webLink,
      'regDate': instance.regDate.toIso8601String(),
    };
