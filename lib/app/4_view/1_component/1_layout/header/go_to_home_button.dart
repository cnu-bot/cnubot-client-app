import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GoToHomeButton extends StatelessWidget {
  const GoToHomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.w,
      top: 32.h,
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Image(
          width: 65.w,
          height: 65.h,
          image: const AssetImage('assets/images/common/memoji_home.png'),
        ),
      ),
    );
  }
}
