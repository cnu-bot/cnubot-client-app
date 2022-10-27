import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/go_to_home_button.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_circle.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_logo.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_text.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_controller.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_search_detail/component/live_notice_list_view.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_search_detail/component/shortcut_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchDetailScreen extends StatefulWidget {
  const SearchDetailScreen({Key? key}) : super(key: key);

  @override
  State<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends State<SearchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final noticeController = Get.find<NoticeController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const GoToHomeButton(),
                const TopCircle(),
                const TopLogo(),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 142.h, 0, 0),
                  child: Column(
                    children: [
                      const TopText(text: "바로가기"),
                      const ShortcutListView(),
                      SizedBox(
                        height: 33.h,
                      ),
                      const TopText(text: "실시간 게시물"),
                      Obx(() => noticeController.noticeModelList.isEmpty
                          ? const SizedBox.shrink()
                          : LiveNoticeListView(
                              liveNoticeList: noticeController.noticeModelList,
                            )),
                      SizedBox(
                        height: 160.h,
                      ),
                      SizedBox(
                        width: 350.w,
                        height: 44.h,
                        child: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16.0.w),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: kPrimaryBlue,
                            ),
                            suffix: Text(
                              "취소",
                              style: TextStyle(
                                  color: const Color(0xFF828282),
                                  fontSize: 14.sp),
                            ),
                            hintText: "검색",
                            hintStyle: kSearchLabel,
                            filled: true,
                            fillColor: kSecondaryGray,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.r),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
