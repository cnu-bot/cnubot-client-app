import 'package:cnubot_app/modules/home/home_controller.dart';
import 'package:cnubot_app/modules/home/tabs/tabs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
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
          _buildNavigationBarItem(
              "셔틀",
              MainTabs.shuttle == controller.currentTab.value
                  ? const Icon(Icons.abc)
                  : const Icon(Icons.abc)),
          _buildNavigationBarItem(
              "도서관",
              MainTabs.shuttle == controller.currentTab.value
                  ? const Icon(Icons.abc)
                  : const Icon(Icons.abc)),
          _buildNavigationBarItem(
              "식당",
              MainTabs.shuttle == controller.currentTab.value
                  ? const Icon(Icons.abc)
                  : const Icon(Icons.abc)),
          _buildNavigationBarItem(
              "더보기",
              MainTabs.shuttle == controller.currentTab.value
                  ? const Icon(Icons.abc)
                  : const Icon(Icons.abc)),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        currentIndex: controller.getCurrentIndex(controller.currentTab.value),
        selectedItemColor: Colors.red,
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
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
