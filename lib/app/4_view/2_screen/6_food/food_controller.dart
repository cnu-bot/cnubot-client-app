import 'package:cnubot_app/app/1_data/0_model/first_sh_food_model.dart';
import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/1_data/2_repository/food_repository.dart';
import 'package:cnubot_app/app/3_util/dialog_util.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/first_sh_food_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/time_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/0_home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  final FoodRepository repository;

  FoodController({required this.repository});

  // 상위 분류
  Rx<CafeteriaType> cafeteriaType = CafeteriaType.dormitory.obs;
  // 요일
  Rx<DayType> dayType = DayType.today.obs;
  // 음식 타입
  Rx<FirstShFoodType> foodType = FirstShFoodType.ramen.obs;
  // 게시글
  RxList<FoodModel> breakfastList = <FoodModel>[].obs;
  RxList<FoodModel> lunchList = <FoodModel>[].obs;
  RxList<FoodModel> dinnerList = <FoodModel>[].obs;

  // 1학 리스트
  RxList<FirstShFoodModel> firstShFoodModelList = <FirstShFoodModel>[].obs;

  ScrollController? foodScrollController = ScrollController();

  @override
  void onInit() async {
    super.onInit();
    foodScrollController!.addListener(() {
      HomeController.to.updateBnbVisible(
          foodScrollController!.position.userScrollDirection ==
              ScrollDirection.forward);
    });
    getFoodModelList(refresh: true);
    getFirstSHFoodModelList(refresh: true);
  }

  // 상위 분류 변경
  void updateCafeteriaType(CafeteriaType newValue) {
    cafeteriaType.value = newValue;
    if (cafeteriaType.value == CafeteriaType.firstSh) {
      getFirstSHFoodModelList(refresh: false);
    } else {
      getFoodModelList(refresh: false);
    }
  }

  // 요일 변경
  void updateDayType(DayType newValue) {
    dayType.value = newValue;
    if (cafeteriaType.value == CafeteriaType.firstSh) {
      getFirstSHFoodModelList(refresh: true);
    } else {
      getFoodModelList(refresh: false);
    }
  }

  // 음식 타입 변경
  void updateFoodType(FirstShFoodType newValue) {
    foodType.value = newValue;
    if (cafeteriaType.value == CafeteriaType.firstSh) {
      getFirstSHFoodModelList(refresh: true);
    } else {
      getFoodModelList(refresh: false);
    }
  }

  void getFoodModelList({bool? refresh}) async {
    try {
      final List<FoodModel> foodModelList = await repository.getFoodModelList({
        'day': dayType.value.param,
        'foodCourt': foodType.value.param,
      });
      final List<FoodModel> tempBreakfastList = [];
      final List<FoodModel> tempLunchList = [];
      final List<FoodModel> tempDinnerList = [];
      for (int i = 0; i < foodModelList.length; i++) {
        switch (foodModelList[i].time) {
          case TimeType.breakfast:
            tempBreakfastList.add(foodModelList[i]);
            break;
          case TimeType.lunch:
            tempLunchList.add(foodModelList[i]);
            break;
          case TimeType.dinner:
            tempDinnerList.add(foodModelList[i]);
            break;
          case TimeType.undefined:
            break;
        }
      }
      breakfastList.value = tempBreakfastList;
      lunchList.value = tempLunchList;
      dinnerList.value = tempDinnerList;
    } catch (e) {
      getDialog(e);
    }
  }

  void getFirstSHFoodModelList({bool? refresh}) async {
    try {
      firstShFoodModelList.value = await repository.getFirstShFoodModelList({
        'firstHallType': foodType.value.param,
      });
    } catch (e) {
      getDialog(e);
    }
  }
}
