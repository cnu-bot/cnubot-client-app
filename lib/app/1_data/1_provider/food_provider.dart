import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';

class FoodProvider {
  final DioHelper dioHelper;
  FoodProvider({required this.dioHelper});

  Future<List<FoodModel>> getFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    final List<dynamic> resultList = await dioHelper.getList(
      '/food/',
      param: paramMap,
      refresh: refresh,
    );
    final List<FoodModel> foodModelList = [];

    for (int i = 0; i < resultList.length; i++) {
      final FoodModel foodModel = FoodModel.fromJson(resultList[i]);
      foodModelList.add(foodModel);
    }
    return [];
  }
}
