import 'package:cnubot_app/app/1_data/0_model/shuttle_model.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';

class ShuttleProvider {
  final DioHelper dioHelper;
  ShuttleProvider({required this.dioHelper});

  Future<List<ShuttleModel>> getShuttleModelList(
    Map<String, dynamic> paramMap,
  ) async {
    final Map<String, dynamic> result =
        await dioHelper.get('/api/user/college/list', param: paramMap);
    dioHelper.errorCheck(result, '셔틀 목록을 찾을 수 없습니다');
    final List<dynamic> resultList = result['returnValue'];
    final List<ShuttleModel> shuttleModelList = [];

    for (int i = 0; i < resultList.length; i++) {
      final ShuttleModel shuttleModel = ShuttleModel.fromJson(resultList[i]);
      shuttleModelList.add(shuttleModel);
    }

    return shuttleModelList;
  }
}
