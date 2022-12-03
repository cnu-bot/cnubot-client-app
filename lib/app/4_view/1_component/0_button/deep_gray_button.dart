import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeepGrayButton extends StatelessWidget {
  const DeepGrayButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(6.w, 3.h, 6.w, 3.h),
      margin: EdgeInsets.fromLTRB(4.w, 0, 3.w, 0),
      decoration: BoxDecoration(
        color: kGrayEE,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Text(
        text,
        style: kBody5,
      ),
    );
  }
}
