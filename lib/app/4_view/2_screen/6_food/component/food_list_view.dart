import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/time_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/food_card.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/no_food_card.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/food_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FoodListView extends GetView<FoodController> {
  const FoodListView({
    Key? key,
    required this.timeType,
  }) : super(key: key);

  final TimeType timeType;

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
                timeType.displayName,
                style: kHeadline3,
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                width: 26.w,
                height: 26.w,
                decoration: const BoxDecoration(
                  color: kGrayE9,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image(
                    width: 14.w,
                    height: 14.w,
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                        'assets/images/food/${timeType.name}_icon.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              List<FoodModel> foodModelList = [];
              switch (timeType) {
                case TimeType.breakfast:
                  foodModelList = controller.breakfastList;
                  break;
                case TimeType.lunch:
                  foodModelList = controller.lunchList;
                  break;
                case TimeType.dinner:
                  foodModelList = controller.dinnerList;
                  break;
                case TimeType.undefined:
                  break;
              }
              if (foodModelList.isEmpty) {
                return SizedBox(
                  height: 160.h,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(18.w, 0, 0.w, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        NoFoodCard(text: '직원'),
                        NoFoodCard(text: '학생'),
                      ],
                    ),
                  ),
                );
              }
              return SizedBox(
                height: 250.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foodModelList.length,
                  padding: EdgeInsets.fromLTRB(18.w, 15.h, 0, 0),
                  itemBuilder: (context, index) {
                    return FoodCard(
                      foodModel: foodModelList[index],
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
