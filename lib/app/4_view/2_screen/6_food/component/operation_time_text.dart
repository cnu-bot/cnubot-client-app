import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/deep_gray_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OperationTimeText extends StatelessWidget {
  const OperationTimeText({
    Key? key,
    required this.operationTime,
  }) : super(key: key);
  final Map<String, dynamic> operationTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 4.h,
      ),
      child: Row(
        children: [
          Text(
            operationTime['text'],
            style: kHeadline5.copyWith(),
          ),
          operationTime['openWeekday']
              ? const DeepGrayButton(text: '평일')
              : const SizedBox.shrink(),
          operationTime['openHoliday']
              ? const DeepGrayButton(text: '주말 및 공휴일')
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
