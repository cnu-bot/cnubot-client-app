import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/1_data/1_provider/notice_provider.dart';

class NoticeRepository {
  final NoticeProvider provider;
  NoticeRepository({required this.provider});

  Future<List<NoticeModel>> getNoticeModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    return provider.getNoticeModelList(
      paramMap,
      refresh: refresh,
    );
  }
}
