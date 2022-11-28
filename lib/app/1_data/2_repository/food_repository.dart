import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/1_data/1_provider/food_provider.dart';

class FoodRepository {
  final FoodProvider provider;
  FoodRepository({required this.provider});

  Future<List<NoticeModel>> getNoticeModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    return provider.getFoodModelList(
      paramMap,
      refresh: refresh,
    );
  }
}
