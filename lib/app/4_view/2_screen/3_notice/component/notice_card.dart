import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/3_util/date_util.dart';
import 'package:cnubot_app/app/3_util/util.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticeCard extends StatelessWidget {
  const NoticeCard({
    Key? key,
    required this.noticeModel,
  }) : super(key: key);
  final NoticeModel noticeModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchWeblink(noticeModel.webLink);
      },
      child: Container(
        decoration: BoxDecoration(
          color: kSecondaryGray,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
        ),
        padding: EdgeInsets.fromLTRB(27.w, 24.h, 27.w, 16.h),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              noticeModel.writer,
              style: kBody1,
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              noticeModel.title,
              style: kBody2,
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              noticeModel.content,
              style: kBody3,
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 12.h,
                  child: Row(
                    children: [
                      Image(
                        width: 12.w,
                        height: 12.h,
                        image: const AssetImage(
                            'assets/images/common/icon_viewcount.png'),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Transform.translate(
                        offset: Offset(0, 1.h),
                        child: Text(
                          noticeModel.viewCount.toString(),
                          style: kBody4,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  convertDatetimeToYYYYMMDD(noticeModel.regDate),
                  style: kBody4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}