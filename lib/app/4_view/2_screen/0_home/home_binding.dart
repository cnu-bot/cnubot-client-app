import 'package:cnubot_app/app/1_data/1_provider/food_provider.dart';
import 'package:cnubot_app/app/1_data/1_provider/notice_provider.dart';
import 'package:cnubot_app/app/1_data/1_provider/shuttle_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/food_repository.dart';
import 'package:cnubot_app/app/1_data/2_repository/notice_repository.dart';
import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_notice/notice_controller.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/food_controller.dart';
import 'package:get/get.dart';

import 'package:cnubot_app/app/4_view/2_screen/0_home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
        repository: ShuttleRepository(
          provider: ShuttleProvider(
            dioHelper: DioHelper(),
          ),
        ),
      );
    });
    Get.lazyPut<NoticeController>(() {
      return NoticeController(
        repository: NoticeRepository(
          provider: NoticeProvider(
            dioHelper: DioHelper(),
          ),
        ),
      );
    });
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
