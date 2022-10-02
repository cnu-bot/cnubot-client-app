import 'package:cnubot_app/api/api_repository.dart';
import 'package:cnubot_app/modules/home/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  Rx<MainTabs> currentTab = MainTabs.shuttle.obs;
  Rx<int> currentTabIndex = 0.obs;

  // data
  RxList<dynamic> shuttleInfo = [].obs;
  RxList<dynamic> shuttleImageInfo = [].obs;

  RxMap<dynamic, dynamic> librarySeats = {}.obs;
  RxMap<dynamic, dynamic> libraryTimes = {}.obs;
  RxList<dynamic> libraryImages = [].obs;

  RxMap<dynamic, dynamic> restaurantTimes = {}.obs;

  late ShuttleTab shuttleTab;
  late LibraryTab libraryTab;
  late MoreTab moreTab;
  late RestaurantTab restaurantTab;

  @override
  void onInit() async {
    super.onInit();
    loadShuttle();
    loadShuttleImage();
    loadLibrarySeats();
    loadLibraryTimes();
    loadLibraryImages();
    loadRestaurantTimes();
    shuttleTab = ShuttleTab();
    libraryTab = LibraryTab();
    moreTab = MoreTab();
    restaurantTab = RestaurantTab();
  }

  // shuttle
  Future<void> loadShuttle() async {
    final _shuttleInfo = await apiRepository.getShuttles();
    shuttleInfo(_shuttleInfo);
  }

  Future<void> loadShuttleImage() async {
    final _shuttleImages = await apiRepository.getShuttleImages();
    shuttleImageInfo(_shuttleImages);
  }

  // library

  Future<void> loadLibrarySeats() async {
    final _librarySeats = await apiRepository.getLibrarySeats();
    librarySeats(_librarySeats);
  }

  Future<void> loadLibraryTimes() async {
    final _libraryTimes = await apiRepository.getLibraryTimes();
    libraryTimes(_libraryTimes);
  }

  Future<void> loadLibraryImages() async {
    final _libraryImages = await apiRepository.getLibraryImages();
    libraryImages(_libraryImages);
  }

  // restaurant
  Future<void> loadRestaurantTimes() async {
    final _restaurantTimes = await apiRepository.getRestaurantTimes();
    restaurantTimes(_restaurantTimes);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTabIndex.value = index;
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