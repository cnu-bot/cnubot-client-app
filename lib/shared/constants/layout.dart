import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeight() {
    return Get.height;
  }
}
