import 'package:cnubot_app/app/1_data/1_provider/notice_provider.dart';
import 'package:cnubot_app/app/1_data/2_repository/notice_repository.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_controller.dart';
import 'package:get/instance_manager.dart';

class SearchDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticeController>(() => NoticeController(
        repository: NoticeRepository(
            provider: NoticeProvider(dioHelper: DioHelper()))));
  }
}
