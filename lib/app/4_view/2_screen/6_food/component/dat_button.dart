import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/gray_round_button.dart';
import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  const DayButton({
    Key? key,
    required this.dayType,
    required this.currentType,
    this.onTap,
  }) : super(key: key);
  final DayType dayType;
  final DayType currentType;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(dayType);
        }
      },
      child: GrayRoundButton(
        isSelected: dayType == currentType,
        text: dayType.displayName,
      ),
    );
  }
}
