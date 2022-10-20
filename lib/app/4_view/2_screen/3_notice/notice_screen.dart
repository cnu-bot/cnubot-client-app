import 'package:cnubot_app/app/3_util/navigate_util.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/board_type.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/go_to_home_button.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_circle.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_logo.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_text.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/nav/nav_item.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/component/board_listview.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/component/international_hq_list_view.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/component/notice_card.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/component/white_horse_square_list_view.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NoticeScreen extends GetView<NoticeController> {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          controller.getNoticeModelList(refresh: true);
          return Future.value();
        },
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            const GoToHomeButton(),
                            const TopCircle(),
                            const TopLogo(),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 142.h, 0, 0),
                              child: Column(
                                children: [
                                  const TopText(
                                    text: '뉴스',
                                  ),
                                  Obx(
                                    () => Column(
                                      children: [
                                        BoardListView(
                                          currentType:
                                              controller.boardType.value,
                                          updateBoardType:
                                              controller.updateBoardType,
                                        ),
                                        controller.boardType.value ==
                                                BoardType.whiteHorseSquare
                                            ? WhiteHorseSquareListView(
                                                currentType: controller
                                                    .whiteHorseSquareType.value,
                                                updateWhiteHorseSquareType:
                                                    controller
                                                        .updateWhiteHorseSquareType,
                                              )
                                            : InternationalHqListView(
                                                currentType: controller
                                                    .internationalExchangeHqType
                                                    .value,
                                                updateInternationalHqType:
                                                    controller
                                                        .updateInternationalHqType,
                                              ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // 소식 게시글
                        Obx(
                          () => ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.noticeModelList.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.fromLTRB(0, 31.h, 0, 0),
                            itemBuilder: (context, index) {
                              return NoticeCard(
                                noticeModel: controller.noticeModelList[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70.h,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryBlue,
          currentIndex: 0,
          onTap: navigationMove,
          selectedItemColor: kWhiteColor,
          unselectedItemColor: kWhiteColor,
          selectedLabelStyle: kNavLabel,
          unselectedLabelStyle: kNavLabel,
          items: const [
            BottomNavigationBarItem(
              icon: NavItem(
                assetName: 'n',
                selected: true,
              ),
              label: '뉴스',
            ),
            BottomNavigationBarItem(
              icon: NavItem(
                assetName: 'm',
                selected: false,
              ),
              label: '학교',
            ),
            BottomNavigationBarItem(
              icon: NavItem(
                assetName: 't',
                selected: false,
              ),
              label: '교통',
            ),
            BottomNavigationBarItem(
              icon: NavItem(
                assetName: 'l',
                selected: false,
              ),
              label: '열람실',
            ),
          ],
        ),
      ),
    );
  }
}
