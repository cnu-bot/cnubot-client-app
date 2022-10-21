import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';

class NoticeProvider {
  final DioHelper dioHelper;
  NoticeProvider({required this.dioHelper});

  Future<List<NoticeModel>> getNoticeModelList(Map<String, dynamic> paramMap,
      {bool? refresh}) async {
    Map<String, dynamic> result = await dioHelper.get(
      '/board',
      param: paramMap,
      refresh: refresh,
    );
    dioHelper.errorCheck(result, '소식을 찾을 수 없습니다');
    List<dynamic> resultList = result['returnValue'];
    List<NoticeModel> noticeModelList = [];

    for (int i = 0; i < resultList.length; i++) {
      NoticeModel noticeModel = NoticeModel.fromJson(resultList[i]);
      noticeModelList.add(noticeModel);
    }

    return noticeModelList;
  }
}
