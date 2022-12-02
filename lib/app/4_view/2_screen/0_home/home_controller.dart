import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/nav_page_type.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ShuttleRepository repository;
  static HomeController get to => Get.find();

  HomeController({required this.repository});

  Rx<NavPage> currentPage = NavPage.notice.obs;
  RxBool bnbVisible = true.obs;

  updateCurrentPage(int index) {
    currentPage.value = NavPage.getByIndex(index);
  }

  updateBnbVisible(bool newValue) {
    bnbVisible.value = newValue;
  }
}
