import 'package:cnubot_app/app/4_view/0_constant/enum/nav_page_type.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/nav/bottom_nav_bar.dart';
import 'package:cnubot_app/app/4_view/2_screen/0_home/home_controller.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_notice/notice_screen.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/food_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.currentPage.value) {
          case NavPage.notice:
            return const NoticeScreen();
          case NavPage.food:
            return const FoodScreen();
          case NavPage.bus:
            return Container();
          case NavPage.library:
            return Container();
          default:
            return Container();
        }
      }),
      bottomNavigationBar: Obx(
        () => BottomNavBar(
          currentPage: controller.currentPage.value,
          updateCurrentPage: controller.updateCurrentPage,
        ),
      ),
    );
  }
}
