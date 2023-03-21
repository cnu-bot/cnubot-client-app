import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightGrayButton extends StatelessWidget {
  const LightGrayButton({
    Key? key,
    this.isSelected = true,
    required this.text,
  }) : super(key: key);

  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(13.w, 7.h, 13.w, 7.h),
      margin: EdgeInsets.fromLTRB(0, 0, 5.w, 0),
      decoration: BoxDecoration(
        color: isSelected ? kSecondaryGray : const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Text(
        text,
        style: isSelected
            ? kHeadline5
            : kHeadline5.copyWith(color: const Color(0xff9BA6C4)),
      ),
    );
  }
}
