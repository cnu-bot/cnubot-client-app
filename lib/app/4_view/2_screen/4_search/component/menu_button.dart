import 'package:cnubot_app/app/0_routes/app_pages.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/nav_page_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key, required this.assetName, required this.navpage})
      : super(key: key);
  final String assetName;
  final NavPage navpage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("${Routes.home}?page=${navpage.name}");
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r), color: kSecondaryGray),
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(14.h),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor.withOpacity(0.7),
              ),
              child: SvgPicture.asset(
                "assets/images/search/${assetName}_icon.svg",
                height: 22.h,
              ),
            ),
            Text(
              navpage.displayName,
              style: kSearchLabel,
            )
          ],
        ),
      ),
    );
  }
}
