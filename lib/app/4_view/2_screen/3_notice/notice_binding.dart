import 'package:cnubot_app/app/1_data/1_provider/notice_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/notice_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:get/get.dart';

import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_controller.dart';

class NoticeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticeController>(() {
      return NoticeController(
        repository: NoticeRepository(
          provider: NoticeProvider(
            dioHelper: DioHelper(),
          ),
        ),
      );
    });
  }
}
