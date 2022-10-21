import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullPageContainer extends StatelessWidget {
  final int beginColor;
  final int endColor;
  final Widget child;
  const FullPageContainer(
      {Key? key,
      required this.beginColor,
      required this.endColor,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(beginColor), Color(endColor)])),
        width: Get.width,
        height: Get.height,
        child: child,
      );
}
