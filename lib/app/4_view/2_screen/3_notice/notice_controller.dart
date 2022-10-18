import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/1_data/2_repository/notice_repository.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/board_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/international_hq_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/white_horse_square_type.dart';
import 'package:get/get.dart';

class NoticeController extends GetxController {
  final NoticeRepository repository;

  NoticeController({required this.repository});

  // 상위 분류
  Rx<BoardType> boardType = BoardType.whiteHorseSquare.obs;
  // 백마광장 하위 메뉴
  Rx<WhiteHorseSquareType> whiteHorseSquareType = WhiteHorseSquareType.news.obs;
  // 국제교류본부 하위 메뉴
  Rx<InternationalHqType> internationalExchangeHqType =
      InternationalHqType.studentRecruiting.obs;
  // 게시글
  RxList<NoticeModel> noticeModelList = <NoticeModel>[].obs;
  @override
  void onInit() async {
    super.onInit();
    getNoticeModelList(refresh: true);
  }

  // 상위 분류 변경
  void updateBoardType(BoardType newValue) {
    boardType.value = newValue;
    getNoticeModelList(refresh: false);
  }

  // 백마광장 하위 메뉴 변경
  void updateWhiteHorseSquareType(WhiteHorseSquareType newValue) {
    whiteHorseSquareType.value = newValue;
    getNoticeModelList(refresh: false);
  }

  // 국제교류본부 하위 메뉴 변경
  void updateInternationalHqType(InternationalHqType newValue) {
    internationalExchangeHqType.value = newValue;
    getNoticeModelList(refresh: false);
  }

  void getNoticeModelList({bool? refresh}) async {
    try {
      String? menu;
      if (boardType.value == BoardType.whiteHorseSquare) {
        menu = whiteHorseSquareType.value.name;
      } else if (boardType.value == BoardType.internationalHq) {
        menu = internationalExchangeHqType.value.name;
      }
      noticeModelList.value = await repository.getNoticeModelList(
        {
          'menu': menu,
        },
        refresh: refresh,
      );
    } catch (e) {
      // getDialog(e);
      // TODO API연동 후 더미데이터 제거
      noticeModelList.value = [];
      for (int i = 0; i < 5; i++) {
        noticeModelList.add(NoticeModel(
          id: 1,
          title: '[미래리빙랩센터] 2022-2차 실행리빙랩 공모사업 선정결과 안내',
          content:
              '''국가의 세입·세출의 결산, 국가 및 법률이 정한 단체의 회계검사와 행정기관 및 공무원의 직무에 관한 감찰을 하기 위하여 대통령 소속하에 감사원을 둔다. 국가는 지역간의 균형있는 발전을 위하여 지역경제를 육성할 의무를 진다. 국회는 국정을 감사하거나 특정한 국정사안에 대하여 조사할 수 있으며, 이에 필요한 서류의 제출 또는 증인의 출석과 증언이나 의견의 진술을 요구할 수 있다. 의무교육은 파면되지 아니한다. ''',
          writer: '대전/충남/세종지역 혁신 플랫폼 총괄 운영센터',
          viewCount: 3005,
          webLink:
              "https://plus.cnu.ac.kr/_prog/_board/?mode=V&no=2488897&code=sub07_0701&site_dvs_cd=kr&menu_dvs_cd=0701&skey=&sval=&site_dvs=&ntt_tag=&GotoPage=",
          regDate: DateTime.now(),
        ));
      }
    }
  }
}
