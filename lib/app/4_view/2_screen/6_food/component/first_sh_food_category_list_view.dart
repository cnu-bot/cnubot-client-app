import 'package:cnubot_app/app/4_view/0_constant/enum/first_sh_food_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/first_sh_food_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstShFoodCategoryListView extends StatelessWidget {
  const FirstShFoodCategoryListView({
    Key? key,
    required this.currentType,
    required this.updateFoodType,
  }) : super(key: key);
  final FirstShFoodType currentType;
  final Function updateFoodType;
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
                for (int i = 0; i < FirstShFoodType.values.length; i++)
                  if (FirstShFoodType.values[i] != FirstShFoodType.undefined)
                    FirstShFoodButton(
                      foodType: FirstShFoodType.values[i],
                      currentType: currentType,
                      onTap: updateFoodType,
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
