import 'package:cnubot_app/api/api_repository.dart';
import 'package:cnubot_app/modules/home/tabs/tabs.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  var currentTab = MainTabs.shuttle.obs;

  late ShuttleTab shuttleTab;
  late LibraryTab libraryTab;
  late MoreTab moreTab;
  late RestaurantTab restaurantTab;

  @override
  void onInit() async {
    super.onInit();

    shuttleTab = ShuttleTab();
    libraryTab = LibraryTab();
    moreTab = MoreTab();
    restaurantTab = RestaurantTab();
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.shuttle:
        return 0;
      case MainTabs.library:
        return 1;
      case MainTabs.restaurant:
        return 2;
      case MainTabs.more:
        return 3;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.shuttle;
      case 1:
        return MainTabs.library;
      case 2:
        return MainTabs.restaurant;
      case 3:
        return MainTabs.more;
      default:
        return MainTabs.shuttle;
    }
  }
}
