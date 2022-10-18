import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 64.h,
      child: Image(
        width: 57.w,
        height: 47.h,
        image: const AssetImage('assets/images/common/logo_CNB.png'),
      ),
    );
  }
}
