import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 89.w,
      height: 21.h,
      fit: BoxFit.fitWidth,
      image: const AssetImage('assets/images/common/cnb_logo.png'),
    );
  }
}
