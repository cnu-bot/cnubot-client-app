import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/1_data/2_repository/food_repository.dart';
import 'package:cnubot_app/app/3_util/dialog_util.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/board_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/international_hq_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/white_horse_square_type.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  final FoodRepository repository;

  FoodController({required this.repository});

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
        menu = whiteHorseSquareType.value.param;
      } else if (boardType.value == BoardType.internationalHq) {
        menu = internationalExchangeHqType.value.param;
      }
      noticeModelList.value = await repository.getNoticeModelList(
        {
          'menuName': menu,
        },
        refresh: refresh,
      );
    } catch (e) {
      getDialog(e);
    }
  }
}
