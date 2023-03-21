import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/3_util/url_util.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class LiveNoticeMenuButton extends StatelessWidget {
  const LiveNoticeMenuButton({Key? key, required this.noticeModel})
      : super(key: key);

  final NoticeModel noticeModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchWeblink(noticeModel.url);
      },
      child: Container(
        width: 118.w,
        padding: EdgeInsets.fromLTRB(13.w, 7.h, 13.w, 7.h),
        margin: EdgeInsets.fromLTRB(0, 0, 5.w, 0),
        decoration: BoxDecoration(
          color: kSecondaryGray,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Text(
          noticeModel.name,
          style: kHeadline5,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
