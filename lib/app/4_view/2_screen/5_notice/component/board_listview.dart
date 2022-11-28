import 'package:cnubot_app/app/4_view/0_constant/enum/board_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_notice/component/board_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoardListView extends StatelessWidget {
  const BoardListView({
    Key? key,
    required this.currentType,
    required this.updateBoardType,
  }) : super(key: key);
  final BoardType currentType;
  final Function updateBoardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18.w, 13.h, 0, 0),
      child: Row(
        children: [
          BoardButton(
            boardType: BoardType.whiteHorseSquare,
            currentType: currentType,
            onTap: updateBoardType,
          ),
          BoardButton(
            boardType: BoardType.internationalHq,
            currentType: currentType,
            onTap: updateBoardType,
          ),
        ],
      ),
    );
  }
}
