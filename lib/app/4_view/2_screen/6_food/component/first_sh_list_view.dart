import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/first_sh_food_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/first_sh_food_card.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/food_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FirstShListView extends GetView<FoodController> {
  const FirstShListView({
    Key? key,
    required this.foodType,
  }) : super(key: key);

  final FirstShFoodType foodType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: Row(
            children: [
              Text(
                foodType.displayName,
                style: kHeadline3,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Column(
          children: [
            SizedBox(
              width: 375.w,
              height: 200.h,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.firstShFoodModelList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 18.w),
                  itemBuilder: (context, index) {
                    return FirstShFoodCard(
                      firstShFoodModel: controller.firstShFoodModelList[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
