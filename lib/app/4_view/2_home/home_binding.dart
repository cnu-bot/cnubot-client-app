import 'package:cnubot_app/app/1_data/1_provider/shuttle_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

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
  }
}
