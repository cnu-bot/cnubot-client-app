// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_sh_food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirstShFoodModel _$$_FirstShFoodModelFromJson(Map<String, dynamic> json) =>
    _$_FirstShFoodModel(
      foodName: json['foodName'] as String,
      type: $enumDecode(_$FirstShFoodTypeEnumMap, json['type']),
      price: json['price'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_FirstShFoodModelToJson(_$_FirstShFoodModel instance) =>
    <String, dynamic>{
      'foodName': instance.foodName,
      'type': _$FirstShFoodTypeEnumMap[instance.type]!,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };

const _$FirstShFoodTypeEnumMap = {
  FirstShFoodType.ramen: 'ramen',
  FirstShFoodType.koreanFood: 'koreanFood',
  FirstShFoodType.westernFood: 'westernFood',
  FirstShFoodType.japaneseFood: 'japaneseFood',
  FirstShFoodType.chineseFood: 'chineseFood',
  FirstShFoodType.snack: 'snack',
  FirstShFoodType.undefined: 'undefined',
};
