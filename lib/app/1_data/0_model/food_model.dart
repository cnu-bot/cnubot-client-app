import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/time_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
class FoodModel with _$FoodModel {
  const factory FoodModel({
    required CafeteriaType foodCourt,
    required DayType day,
    required TimeType time,
    required String type,
    required int? calorie,
    required List<String>? foods,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, Object?> json) =>
      _$FoodModelFromJson(json);
}
