import 'package:cnubot_app/modules/home/home_controller.dart';
import 'package:cnubot_app/modules/home/tabs/tabs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(() => _buildWidget()),
    );
  }

  Widget _buildWidget() {
    return Scaffold(
      body: Center(
        child: _buildContent(controller.currentTab.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildNavigationBarItem("셔틀", const Icon(Icons.airport_shuttle)),
          _buildNavigationBarItem("도서관", const Icon(Icons.book)),
          _buildNavigationBarItem("식당", const Icon(Icons.food_bank)),
          _buildNavigationBarItem("더보기", const Icon(Icons.menu))
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        currentIndex: controller.getCurrentIndex(controller.currentTab.value),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        onTap: (index) => controller.switchTab(index),
      ),
    );
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.shuttle:
        return controller.shuttleTab;
      case MainTabs.library:
        return controller.libraryTab;
      case MainTabs.restaurant:
        return controller.restaurantTab;
      case MainTabs.more:
        return controller.moreTab;
      default:
        return controller.shuttleTab;
    }
  }

  BottomNavigationBarItem _buildNavigationBarItem(String label, Icon icon) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
