import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.foodModel,
  }) : super(key: key);
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        color: kSecondaryGray,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.r),
          topRight: Radius.circular(18.r),
        ),
      ),
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
      margin: EdgeInsets.fromLTRB(0, 0, 13.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                foodModel.type,
                style: kBody1.copyWith(color: kBlue00),
              ),
              SizedBox(
                width: 2.w,
              ),
              foodModel.calorie == null
                  ? const SizedBox.shrink()
                  : Text(
                      '${foodModel.calorie}kcal',
                      style: kBody5.copyWith(color: kGray6C),
                    ),
            ],
          ),
          SizedBox(
            height: 9.h,
          ),
          for (int i = 0; i < foodModel.foods!.length; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FoodNameText(
                      text: foodModel.foods![i],
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    FoodOriginButton(
                      text: foodModel.foods![i],
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class FoodNameText extends StatelessWidget {
  const FoodNameText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      convertFoodName(text),
      style: kBody4,
    );
  }

  String convertFoodName(String name) {
    return name.split('[')[0];
  }
}

class FoodOriginButton extends StatelessWidget {
  const FoodOriginButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final String foodOriginText = convertOrigin(text);
    return foodOriginText.isEmpty
        ? const SizedBox.shrink()
        : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: kWhiteColor,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 2.h,
            ),
            child: Text(
              foodOriginText,
              style: kBody6,
            ),
          );
  }

  String convertOrigin(String name) {
    final RegExp exp = RegExp(r'(\[.*\])');
    final RegExpMatch? match = exp.firstMatch(name);
    if (match == null) {
      return '';
    }
    return match[0].toString().replaceAll('[', '').replaceAll(']', '');
  }
}
