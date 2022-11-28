import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GrayTimeButton extends StatelessWidget {
  const GrayTimeButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(9.w, 3.h, 9.w, 3.h),
      margin: EdgeInsets.fromLTRB(0, 0, 5.w, 0),
      decoration: BoxDecoration(
        color: kGrayB1,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Text(
        text,
        style: kHeadline5.copyWith(
          color: kWhiteColor,
        ),
      ),
    );
  }
}
