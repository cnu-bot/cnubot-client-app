import 'package:cnubot_app/app/4_view/1_component/school_info.dart';
import 'package:cnubot_app/app/4_view/2_screen/0_home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Obx(
        () => controller.shuttleModelList.isEmpty
            ? const Text('list is empty')
            : SizedBox(
                height: 700.h,
                child: ListView.builder(
                  itemCount: controller.shuttleModelList.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    bottom: 100,
                  ),
                  itemBuilder: (context, index) {
                    return SchoolInfo(
                      collegeModelList: controller.shuttleModelList,
                      index: index,
                    );
                  },
                ),
              ),
      ),
    );
  }

  // Widget _buildSchoolItem(
  //   List<ShuttleModel> collegeModelList,
  //   int index,
  // ) {
  //   return InkWell(
  //     onTap: () {
  //       Get.back();
  //     },
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: Container(
  //             decoration: const BoxDecoration(
  //               border: Border(
  //                 bottom: BorderSide(
  //                   color: Color(0xffE8E8E8),
  //                   width: 1.0,
  //                 ),
  //               ),
  //             ),
  //             child: Container(
  //               padding: const EdgeInsets.symmetric(
  //                   horizontal: 18.0, vertical: 10.0),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(bottom: 5.0),
  //                     child: Text(
  //                       collegeModelList[index].name,
  //                       style: const TextStyle(
  //                         fontSize: 16,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
