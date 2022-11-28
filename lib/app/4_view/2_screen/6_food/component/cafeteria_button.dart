import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/blue_round_button.dart';
import 'package:flutter/material.dart';

class CafeteriaButton extends StatelessWidget {
  const CafeteriaButton({
    Key? key,
    required this.cafeteriaType,
    required this.currentType,
    this.onTap,
  }) : super(key: key);
  final CafeteriaType cafeteriaType;
  final CafeteriaType currentType;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(cafeteriaType);
        }
      },
      child: BlueRoundButton(
        isSelected: cafeteriaType == currentType,
        text: cafeteriaType.displayName,
      ),
    );
  }
}
