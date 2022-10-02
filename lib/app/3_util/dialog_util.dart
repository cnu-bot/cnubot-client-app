import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 다이얼로그
Future<void> getDialog(Object? title) async {
  Future.delayed(const Duration(seconds: 1), () => Get.back());
  Get.dialog(
    Dialog(
      child: SizedBox(
        height: 60,
        child: Center(
          child: Text(
            title.toString(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
    barrierDismissible: false,
    useSafeArea: false,
  );
}

// 로딩 다이얼로그
Future<void> getLoading() async {
  Get.dialog(
    const Dialog(
      child: SizedBox(
        height: 60,
        child: Center(child: CircularProgressIndicator()),
      ),
    ),
    barrierDismissible: false,
    useSafeArea: false,
  );
}
