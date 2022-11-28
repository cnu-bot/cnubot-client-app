// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodModel _$$_FoodModelFromJson(Map<String, dynamic> json) => _$_FoodModel(
      id: json['id'] as int,
      foodCourt: json['foodCourt'] as String?,
      day: json['day'] as String,
      time: json['time'] as String,
      type: json['type'] as String,
      calorie: json['calorie'] as int,
      menu: (json['menu'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FoodModelToJson(_$_FoodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foodCourt': instance.foodCourt,
      'day': instance.day,
      'time': instance.time,
      'type': instance.type,
      'calorie': instance.calorie,
      'menu': instance.menu,
    };
