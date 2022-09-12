import 'package:cnubot_app/modules/home/home_controller.dart';
import 'package:cnubot_app/shared/constants/font.dart';
import 'package:cnubot_app/shared/constants/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const RESTAURANT_TIMES = [
  "기숙사",
  "제1학생회관",
  "제2학생회관",
  "제3학생회관",
  "제4학생회관",
  "생활과학대학"
];

class RestaurantTab extends GetView<HomeController> {
  void openDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('시간표'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                RESTAURANT_TIMES.length,
                (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Text(
                          RESTAURANT_TIMES[index],
                          style: FontStyles.headLineStyle2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          controller.restaurantTimes[RESTAURANT_TIMES[index]],
                        ),
                      ],
                    )),
          ),
        ),
        actions: [
          TextButton(
            child: const Text("닫기"),
            onPressed: () => Get.back(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(
            bottom: 8.0, right: AppLayout.getScreenWidth() * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                child: const Icon(Icons.calendar_month),
                onTap: () {
                  openDialog();
                }),
            InkWell(
                child: const Icon(Icons.refresh),
                onTap: () {
                  controller.loadLibrarySeats();
                }),
          ],
        ),
      ),
    ]);
  }
}
