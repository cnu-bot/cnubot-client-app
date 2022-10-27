import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.assetName,
    required this.selected,
  }) : super(key: key);
  final String assetName;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.h,
      height: 35.h,
      margin: EdgeInsets.fromLTRB(0, 10.h, 0, 4.h),
      decoration: BoxDecoration(
        color: selected ? kSecondaryBlue : kNavBackground,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        'assets/images/common/nav_$assetName.svg',
        height: 14.17.h,
        fit: BoxFit.scaleDown,
        color: selected ? kWhiteColor : kNavAlphabetColor,
      ),
    );
  }
}
