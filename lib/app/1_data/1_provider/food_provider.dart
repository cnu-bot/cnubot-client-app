import 'package:cnubot_app/app/1_data/0_model/first_sh_food_model.dart';
import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/first_sh_food_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/time_type.dart';

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
      resultList[i]['foodCourt'] =
          CafeteriaType.getByParam(resultList[i]['foodCourt']).name;
      resultList[i]['day'] = DayType.getByParam(resultList[i]['day']).name;
      resultList[i]['time'] = TimeType.getByParam(resultList[i]['time']).name;

      if (resultList[i]['foodCourt'] == CafeteriaType.dormitory) {
        final String type = resultList[i]['type'];
        final List<String> splitedType = type.split('(');
        resultList[i]['type'] = splitedType[0];
        resultList[i]['calorie'] = splitedType.length > 1
            ? int.parse(splitedType[1].split('kcal)')[0])
            : null;
      }

      final FoodModel foodModel = FoodModel.fromJson(resultList[i]);
      foodModelList.add(foodModel);
    }
    return foodModelList;
  }

  Future<List<FirstShFoodModel>> getFirstShFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    final List<dynamic> resultList = await dioHelper.getList(
      '/food/first-student-hall/',
      param: paramMap,
      refresh: refresh,
    );
    final List<FirstShFoodModel> firstStudentHallFoodModel = [];

    for (int i = 0; i < resultList.length; i++) {
      resultList[i]['type'] =
          FirstShFoodType.getByParam(resultList[i]['type']).name;
      final FirstShFoodModel foodModel =
          FirstShFoodModel.fromJson(resultList[i]);
      firstStudentHallFoodModel.add(foodModel);
    }
    return firstStudentHallFoodModel;
  }
}
