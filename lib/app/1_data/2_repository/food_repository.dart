import 'package:cnubot_app/app/1_data/0_model/first_sh_food_model.dart';
import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/1_data/1_provider/food_provider.dart';

class FoodRepository {
  final FoodProvider provider;
  FoodRepository({required this.provider});

  Future<List<FoodModel>> getFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    return provider.getFoodModelList(
      paramMap,
      refresh: refresh,
    );
  }

  Future<List<FirstShFoodModel>> getFirstShFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    return provider.getFirstShFoodModelList(
      paramMap,
      refresh: refresh,
    );
  }
}
