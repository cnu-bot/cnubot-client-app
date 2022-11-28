import 'package:cnubot_app/app/1_data/1_provider/food_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/food_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/food_controller.dart';
import 'package:get/get.dart';

class FoodBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodController>(() {
      return FoodController(
        repository: FoodRepository(
          provider: FoodProvider(
            dioHelper: DioHelper(),
          ),
        ),
      );
    });
  }
}
