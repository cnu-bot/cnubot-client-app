import 'package:cnubot_app/app/4_view/2_screen/0_home/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      // body: Text('hello world'),
      body: Container(),
    );
  }
}
