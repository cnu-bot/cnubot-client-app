import 'package:cnubot_app/components/common/full_screen_image.dart';
import 'package:cnubot_app/shared/constants/font.dart';
import 'package:cnubot_app/shared/constants/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ShuttleCard extends StatelessWidget {
  final String info;
  final String rootImage;
  final int index;

  const ShuttleCard(
      {Key? key,
      required this.info,
      required this.index,
      required this.rootImage})
      : super(key: key);

  String titleGenerator(int index) {
    switch (index) {
      case 0:
        return "A노선(순환)";
      case 1:
        return "B노선(순환)";
      case 2:
        return "C노선(보운행)";
      case 3:
        return "C노선(대덕행)";
      default:
        return "A노선(순환)";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: SizedBox(
          width: AppLayout.getScreenWidth() * 0.9,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  titleGenerator(index),
                  textAlign: TextAlign.center,
                  style:
                      FontStyles.headLineStyle2.copyWith(color: Colors.white),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  info,
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => FullScreenImage(
                        imageUrl: rootImage, tag: titleGenerator(index)));
                  },
                  child: const Text(
                    "노선표 보기",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          )),
    );
  }
}
