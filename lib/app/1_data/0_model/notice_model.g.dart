// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeModel _$$_NoticeModelFromJson(Map<String, dynamic> json) =>
    _$_NoticeModel(
      id: json['id'] as int,
      boardNum: json['boardNum'] as String?,
      name: json['name'] as String,
      boardDetail: json['boardDetail'] as String,
      writer: json['writer'] as String,
      hits: json['hits'] as String,
      url: json['url'] as String,
      picUrl: json['picUrl'] as String?,
      period: json['period'] as String?,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_NoticeModelToJson(_$_NoticeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'boardNum': instance.boardNum,
      'name': instance.name,
      'boardDetail': instance.boardDetail,
      'writer': instance.writer,
      'hits': instance.hits,
      'url': instance.url,
      'picUrl': instance.picUrl,
      'period': instance.period,
      'date': instance.date,
    };
