import 'package:cnubot_app/app/4_view/0_constant/enum/board_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/blue_round_button.dart';
import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {
  const BoardButton({
    Key? key,
    required this.boardType,
    required this.currentType,
    this.onTap,
  }) : super(key: key);
  final BoardType boardType;
  final BoardType currentType;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(boardType);
        }
      },
      child: BlueRoundButton(
        isSelected: boardType == currentType,
        text: boardType.displayName,
      ),
    );
  }
}
