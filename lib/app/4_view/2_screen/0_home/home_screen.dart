import 'package:cnubot_app/app/4_view/0_constant/route_name.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/nav/bottom_nav_bar.dart';
import 'package:cnubot_app/app/4_view/2_screen/0_home/home_controller.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.notice:
            return const NoticeScreen();
          case RouteName.food:
            return const NoticeScreen();
          case RouteName.bus:
            return const NoticeScreen();
          case RouteName.library:
            return const NoticeScreen();
          default:
            return const NoticeScreen();
        }
      }),
      bottomNavigationBar: BottomNavBar(
        currentIndex: controller.currentIndex.value,
      ),
    );
  }
}
