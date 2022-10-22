import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_search_detail/component/live_notice_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveNoticeListView extends StatelessWidget {
  const LiveNoticeListView({Key? key, required this.liveNoticeList})
      : super(key: key);

  final List<NoticeModel> liveNoticeList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 13.h, 0, 0),
      height: 29.h,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                ...liveNoticeList.map((noticeItem) =>
                    LiveNoticeMenuButton(noticeModel: noticeItem))
              ],
            ),
          )
        ],
      ),
    );
  }
}
