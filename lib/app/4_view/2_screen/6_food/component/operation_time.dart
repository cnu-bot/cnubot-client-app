import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/food_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/gray_time_button.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_text.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/operation_time_text.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/opertion_time_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OperationTime extends StatefulWidget {
  const OperationTime({
    Key? key,
    required this.cafeteriaType,
    required this.foodType,
  }) : super(key: key);
  final CafeteriaType cafeteriaType;
  final FoodType foodType;

  @override
  State<OperationTime> createState() => _OperationTimeState();
}

class _OperationTimeState extends State<OperationTime> {
  late ScrollController scrollController;
  @override
  initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopText(
          text: '운영시간',
        ),
        SizedBox(
          height: 13.h,
        ),
        SizedBox(
          height: 80.h,
          child: RawScrollbar(
            trackVisibility: true,
            trackColor: kGrayF3,
            trackBorderColor: kGrayF3,
            controller: scrollController,
            thumbVisibility: true,
            thumbColor: kBlue07.withOpacity(0.7),
            radius: Radius.circular(100.r),
            thickness: 4,
            child: CustomScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 18.w,
                      ),
                      OperationTimeBox(
                        time: '아침',
                        cafeteriaType: widget.cafeteriaType,
                        foodType: widget.foodType,
                      ),
                      OperationTimeBox(
                        time: '점심',
                        cafeteriaType: widget.cafeteriaType,
                        foodType: widget.foodType,
                      ),
                      OperationTimeBox(
                        time: '저녁',
                        cafeteriaType: widget.cafeteriaType,
                        foodType: widget.foodType,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OperationTimeBox extends StatelessWidget {
  const OperationTimeBox({
    Key? key,
    required this.time,
    required this.cafeteriaType,
    required this.foodType,
  }) : super(key: key);

  final String time;
  final CafeteriaType cafeteriaType;
  final FoodType foodType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cafeteriaType == CafeteriaType.studentHall1
                ? GrayTimeButton(
                    text: operationTimeInfo[cafeteriaType.displayName]
                        [foodType.displayName][time]['displayName'],
                  )
                : GrayTimeButton(
                    text: operationTimeInfo[cafeteriaType.displayName][time]
                        ['displayName'],
                  ),
            SizedBox(
              height: 7.h,
            ),
            cafeteriaType == CafeteriaType.studentHall1
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0;
                          i <
                              operationTimeInfo[cafeteriaType.displayName]
                                          [foodType.displayName][time]
                                      ['operationTime']
                                  .length;
                          i++)
                        OperationTimeText(
                          operationTime:
                              operationTimeInfo[cafeteriaType.displayName]
                                      [foodType.displayName][time]
                                  ['operationTime'][i],
                        )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0;
                          i <
                              operationTimeInfo[cafeteriaType.displayName][time]
                                      ['operationTime']
                                  .length;
                          i++)
                        OperationTimeText(
                          operationTime:
                              operationTimeInfo[cafeteriaType.displayName][time]
                                  ['operationTime'][i],
                        )
                    ],
                  ),
          ],
        ),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }
}
