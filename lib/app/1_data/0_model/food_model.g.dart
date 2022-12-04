// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodModel _$$_FoodModelFromJson(Map<String, dynamic> json) => _$_FoodModel(
      foodCourt: $enumDecode(_$CafeteriaTypeEnumMap, json['foodCourt']),
      day: $enumDecode(_$DayTypeEnumMap, json['day']),
      time: $enumDecode(_$TimeTypeEnumMap, json['time']),
      type: json['type'] as String,
      calorie: json['calorie'] as int?,
      foods:
          (json['foods'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FoodModelToJson(_$_FoodModel instance) =>
    <String, dynamic>{
      'foodCourt': _$CafeteriaTypeEnumMap[instance.foodCourt]!,
      'day': _$DayTypeEnumMap[instance.day]!,
      'time': _$TimeTypeEnumMap[instance.time]!,
      'type': instance.type,
      'calorie': instance.calorie,
      'foods': instance.foods,
    };

const _$CafeteriaTypeEnumMap = {
  CafeteriaType.dormitory: 'dormitory',
  CafeteriaType.firstSh: 'firstSh',
  CafeteriaType.secondSh: 'secondSh',
  CafeteriaType.thirdSh: 'thirdSh',
  CafeteriaType.fourthSh: 'fourthSh',
  CafeteriaType.collegeOfLifeSciences: 'collegeOfLifeSciences',
  CafeteriaType.undefined: 'undefined',
};

const _$DayTypeEnumMap = {
  DayType.today: 'today',
  DayType.mon: 'mon',
  DayType.tue: 'tue',
  DayType.wed: 'wed',
  DayType.thu: 'thu',
  DayType.fri: 'fri',
  DayType.sat: 'sat',
  DayType.sun: 'sun',
  DayType.undefined: 'undefined',
};

const _$TimeTypeEnumMap = {
  TimeType.breakfast: 'breakfast',
  TimeType.lunch: 'lunch',
  TimeType.dinner: 'dinner',
  TimeType.undefined: 'undefined',
};
