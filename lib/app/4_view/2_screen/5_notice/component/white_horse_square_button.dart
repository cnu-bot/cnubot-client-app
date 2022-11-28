import 'package:cnubot_app/app/4_view/0_constant/enum/white_horse_square_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/gray_button.dart';
import 'package:flutter/material.dart';

class WhiteHorseSquareButton extends StatelessWidget {
  const WhiteHorseSquareButton({
    Key? key,
    required this.whiteHorseSquareType,
    required this.currentType,
    this.onTap,
  }) : super(key: key);
  final WhiteHorseSquareType whiteHorseSquareType;
  final WhiteHorseSquareType currentType;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(whiteHorseSquareType);
        }
      },
      child: GrayRoundButton(
        isSelected: whiteHorseSquareType == currentType,
        text: whiteHorseSquareType.displayName,
      ),
    );
  }
}
