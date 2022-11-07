import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCircle extends StatelessWidget {
  const TopCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.h,
      height: 150.h,
      padding: const EdgeInsets.all(
        20.0,
      ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kSecondaryBlue,
      ),
    );
  }
}
