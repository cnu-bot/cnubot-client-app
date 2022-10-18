import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueRoundButton extends StatelessWidget {
  const BlueRoundButton({
    Key? key,
    required this.isSelected,
    required this.text,
  }) : super(key: key);

  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.w, 13.h, 8.w, 13.h),
      margin: EdgeInsets.fromLTRB(0, 0, 6.w, 0),
      decoration: BoxDecoration(
        color: isSelected ? kBlue00299F : kSecondaryGray,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Text(
        text,
        style: isSelected ? kHeadline4 : kHeadline4Gray,
      ),
    );
  }
}
