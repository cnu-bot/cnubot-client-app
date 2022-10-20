import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ShuttleRepository repository;

  HomeController({required this.repository});

  RxInt currentIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
  }
}
