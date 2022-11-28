import 'package:cnubot_app/app/4_view/0_constant/enum/food_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/gray_round_button.dart';
import 'package:flutter/material.dart';

class FoodButton extends StatelessWidget {
  const FoodButton({
    Key? key,
    required this.foodType,
    required this.currentType,
    this.onTap,
  }) : super(key: key);
  final FoodType foodType;
  final FoodType currentType;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(foodType);
        }
      },
      child: GrayRoundButton(
        isSelected: foodType == currentType,
        text: foodType.displayName,
      ),
    );
  }
}
