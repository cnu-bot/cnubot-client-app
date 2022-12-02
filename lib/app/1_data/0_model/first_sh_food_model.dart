import 'package:cnubot_app/app/4_view/0_constant/enum/first_sh_food_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'first_sh_food_model.freezed.dart';
part 'first_sh_food_model.g.dart';

@freezed
class FirstShFoodModel with _$FirstShFoodModel {
  const factory FirstShFoodModel({
    required String foodName,
    required FirstShFoodType type,
    required String price,
    required String imageUrl,
  }) = _FirstShFoodModel;

  factory FirstShFoodModel.fromJson(Map<String, Object?> json) =>
      _$FirstShFoodModelFromJson(json);
}
