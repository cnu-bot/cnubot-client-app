import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/dat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayListView extends StatelessWidget {
  const DayListView({
    Key? key,
    required this.currentType,
    required this.updateDayType,
  }) : super(key: key);
  final DayType currentType;
  final Function updateDayType;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 13.h, 0, 0),
      height: 29.h,
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
                for (int i = 0; i < DayType.values.length; i++)
                  if (DayType.values[i] != DayType.undefined)
                    DayButton(
                      dayType: DayType.values[i],
                      currentType: currentType,
                      onTap: updateDayType,
                    ),
                SizedBox(
                  width: 18.w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
