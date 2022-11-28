import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';

class FoodProvider {
  final DioHelper dioHelper;
  FoodProvider({required this.dioHelper});

  Future<List<NoticeModel>> getFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    return [];
  }
}
