import 'package:cnubot_app/app/1_data/0_model/shuttle_model.dart';

import '../../2_dio/dio_helper.dart';

class ShuttleProvider {
  final DioHelper dioHelper;
  ShuttleProvider({required this.dioHelper});

  Future<List<ShuttleModel>> getShuttleModelList(
      Map<String, dynamic> paramMap) async {
    Map<String, dynamic> result =
        await dioHelper.get('/api/user/college/list', param: paramMap);
    dioHelper.errorCheck(result, '셔틀 목록을 찾을 수 없습니다');
    List<dynamic> resultList = result['returnValue'];
    List<ShuttleModel> shuttleModelList = [];

    for (int i = 0; i < resultList.length; i++) {
      ShuttleModel shuttleModel = ShuttleModel.fromJson(resultList[i]);
      shuttleModelList.add(shuttleModel);
    }

    return shuttleModelList;
  }
}
