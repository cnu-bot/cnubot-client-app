import 'package:cnubot_app/components/shuttle/shuttle_card.dart';
import 'package:cnubot_app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ShuttleTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                  child: const Icon(Icons.refresh),
                  onTap: () {
                    controller.loadShuttle();
                  }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                        controller.shuttleInfo.length,
                        (index) => ShuttleCard(
                              info: controller.shuttleInfo[index],
                              index: index,
                              rootImage: controller.shuttleImageInfo[index],
                            )).toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
