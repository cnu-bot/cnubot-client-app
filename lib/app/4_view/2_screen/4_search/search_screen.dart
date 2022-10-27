import 'package:cnubot_app/app/0_routes/app_pages.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/nav_page_type.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_logo.dart';
import 'package:cnubot_app/app/4_view/1_component/2_animation/slide_fade_transition.dart';
import 'package:cnubot_app/app/4_view/2_screen/4_search/component/icon_button.dart';
import 'package:cnubot_app/app/4_view/2_screen/4_search/component/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SlideFadeTransition(
            child: Column(
              children: [
                SizedBox(
                  height: 78.h,
                ),
                Container(
                  width: 131.h,
                  height: 131.h,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15.h),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: kPrimaryBlue),
                  child: Image(
                    width: 12.w,
                    height: 12.h,
                    image:
                        const AssetImage('assets/images/common/memoji01.png'),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const TopLogo(),
              ],
            ),
          ),
          SizedBox(
            height: 120.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.w),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleIconButton(icon: Icons.more_horiz, onTap: () {}),
                  CircleIconButton(
                      icon: Icons.search,
                      onTap: () {
                        Get.toNamed(Routes.searchDetail);
                      }),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const MenuButton(assetName: 'n', navpage: NavPage.notice),
              SizedBox(
                height: 20.h,
              ),
              const MenuButton(assetName: 'm', navpage: NavPage.food),
              SizedBox(
                height: 20.h,
              ),
              const MenuButton(assetName: 't', navpage: NavPage.bus),
              SizedBox(
                height: 20.h,
              ),
              const MenuButton(assetName: 'l', navpage: NavPage.library),
            ]),
          )
        ]),
      ),
    );
  }
}
