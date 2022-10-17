import 'package:cnubot_app/app/1_data/0_model/shuttle_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SchoolInfo extends StatelessWidget {
  const SchoolInfo({
    super.key,
    required this.collegeModelList,
    required this.index,
  });
  final List<ShuttleModel> collegeModelList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffE8E8E8),
                    width: 1.0,
                  ),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        collegeModelList[index].name,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
