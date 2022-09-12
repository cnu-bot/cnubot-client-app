import 'package:cached_network_image/cached_network_image.dart';
import 'package:cnubot_app/components/common/full_screen_image.dart';
import 'package:cnubot_app/components/library/library_card.dart';
import 'package:cnubot_app/modules/home/home_controller.dart';
import 'package:cnubot_app/shared/constants/font.dart';
import 'package:cnubot_app/shared/constants/layout.dart';
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

const LIBRARY_TIMES = ["자료실", "열람실", "크리에이티브존"];

const LIBRARY_IMAGES = ["B2층", "B1층", "별관1층", "1층", "2층", "3층", "4층", "5층"];

class LibraryTab extends GetView<HomeController> {
  void openDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('시간표'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                LIBRARY_TIMES.length,
                (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Text(
                          LIBRARY_TIMES[index],
                          style: FontStyles.headLineStyle2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          controller.libraryTimes[LIBRARY_TIMES[index]],
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
    return Column(
      children: [
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
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: LIBRARYS.length,
              itemBuilder: (BuildContext ctx, int index) =>
                  Obx(() => LibraryCard(
                        info: controller.librarySeats[LIBRARYS[index]],
                        title: LIBRARYS[index],
                      ))),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Obx(() => Row(
                children: List.generate(
                    LIBRARY_IMAGES.length,
                    (index) => InkWell(
                          onTap: () {
                            Get.to(() => FullScreenImage(
                                imageUrl: controller.libraryImages[index],
                                tag: LIBRARY_IMAGES[index]));
                          },
                          child: Column(
                            children: [
                              CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  width: AppLayout.getScreenWidth() * 0.3,
                                  fit: BoxFit.contain,
                                  imageUrl: controller.libraryImages[index]),
                              Text(LIBRARY_IMAGES[index])
                            ],
                          ),
                        )).toList(),
              )),
        )
      ],
    );
  }
}
