import 'package:cnubot_app/components/library/library_card.dart';
import 'package:cnubot_app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const LIBRARYS = [
  "B1 Information Commons",
  "B2 Learning Commons",
  "B2 Carrel Zone",
  "1층 자유열람실",
  "2층 제 1열람실 A",
  "2층 제 1열람실 B",
  "2층 제 2열람실 A",
  "2층 제 2열람실 B",
  "2층 제 2열람실 노트북석",
  "2층 제 3열람실 A",
  "2층 제 3열람실 B"
];

class LibraryTab extends GetView<HomeController> {
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
                    controller.loadLibrarySeats();
                  }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                        LIBRARYS.length,
                        (index) => LibraryCard(
                              info: controller.librarySeats[LIBRARYS[index]],
                              title: LIBRARYS[index],
                            )).toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
