import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GoToHomeButton extends StatelessWidget {
  const GoToHomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Image(
        width: 88.w,
        height: 74.h,
        image: const AssetImage('assets/images/common/button_home.png'),
      ),
    );
  }
}
