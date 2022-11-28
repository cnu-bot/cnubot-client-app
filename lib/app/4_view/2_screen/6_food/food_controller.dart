import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/1_data/2_repository/food_repository.dart';
import 'package:cnubot_app/app/3_util/dialog_util.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/food_type.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  final FoodRepository repository;

  FoodController({required this.repository});

  // 상위 분류
  Rx<CafeteriaType> cafeteriaType = CafeteriaType.dormitory.obs;
  // 요일
  Rx<DayType> dayType = DayType.today.obs;
  // 음식 타입
  Rx<FoodType> foodType = FoodType.ramen.obs;
  // 게시글
  RxList<FoodModel> noticeModelList = <FoodModel>[].obs;
  @override
  void onInit() async {
    super.onInit();
    getFoodModelList(refresh: true);
  }

  // 상위 분류 변경
  void updateCafeteriaType(CafeteriaType newValue) {
    cafeteriaType.value = newValue;
    getFoodModelList(refresh: false);
  }

  // 요일 변경
  void updateDayType(DayType newValue) {
    dayType.value = newValue;
    getFoodModelList(refresh: false);
  }

  // 음식 타입 변경
  void updateFoodType(FoodType newValue) {
    foodType.value = newValue;
    getFoodModelList(refresh: false);
  }

  void getFoodModelList({bool? refresh}) async {
    try {} catch (e) {
      getDialog(e);
    }
  }
}
