import 'package:cnubot_app/app/1_data/1_provider/notice_provider.dart';
import 'package:cnubot_app/app/1_data/1_provider/shuttle_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/notice_repository.dart';
import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/nav_page_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_controller.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    String param = Get.parameters['page'] ?? '';
    Get.lazyPut<HomeController>(() {
      return HomeController(
        repository: ShuttleRepository(
          provider: ShuttleProvider(
            dioHelper: DioHelper(),
          ),
        ),
      );
    });
    if (param == NavPage.notice.name) {
      Get.lazyPut<NoticeController>(() {
        return NoticeController(
          repository: NoticeRepository(
            provider: NoticeProvider(
              dioHelper: DioHelper(),
            ),
          ),
        );
      });
    } else if (param == NavPage.food.name) {
    } else if (param == NavPage.bus.name) {
    } else if (param == NavPage.library.name) {}
  }
}
