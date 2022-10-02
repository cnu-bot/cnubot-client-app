import 'package:cnubot_app/app/1_data/1_provider/shuttle_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:get/get.dart';

import 'shuttle_controller.dart';

class ShuttleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShuttleController>(() {
      return ShuttleController(
        repository: ShuttleRepository(
          provider: ShuttleProvider(
            dioHelper: DioHelper(),
          ),
        ),
      );
    });
  }
}
