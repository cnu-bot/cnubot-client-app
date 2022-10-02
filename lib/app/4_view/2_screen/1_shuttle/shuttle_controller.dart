import 'package:cnubot_app/app/1_data/0_model/shuttle_model.dart';
import 'package:cnubot_app/app/1_data/2_repository/shuttle_repository.dart';
import 'package:cnubot_app/app/3_util/dialog_util.dart';
import 'package:get/get.dart';

class ShuttleController extends GetxController {
  final ShuttleRepository repository;

  ShuttleController({required this.repository});

  RxList<ShuttleModel> shuttleModelList = <ShuttleModel>[].obs;
  @override
  void onInit() async {
    super.onInit();
    getShuttleList();
  }

  void getShuttleList() async {
    try {
      shuttleModelList.value = await repository.getShuttleModelList({});
    } catch (e) {
      getDialog(e);
    }
  }
}
