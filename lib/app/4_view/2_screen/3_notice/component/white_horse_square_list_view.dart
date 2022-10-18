import 'package:cnubot_app/app/4_view/0_constant/enum/white_horse_square_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/component/white_horse_square_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhiteHorseSquareListView extends StatelessWidget {
  const WhiteHorseSquareListView({
    Key? key,
    required this.currentType,
    required this.updateWhiteHorseSquareType,
  }) : super(key: key);
  final WhiteHorseSquareType currentType;
  final Function updateWhiteHorseSquareType;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 13.h, 0, 0),
      height: 40.h,
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
                WhiteHorseSquareButton(
                  whiteHorseSquareType: WhiteHorseSquareType.news,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
                ),
                WhiteHorseSquareButton(
                  whiteHorseSquareType:
                      WhiteHorseSquareType.academicInformation,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
                ),
                WhiteHorseSquareButton(
                  whiteHorseSquareType: WhiteHorseSquareType.cnuNews,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
                ),
                WhiteHorseSquareButton(
                  whiteHorseSquareType:
                      WhiteHorseSquareType.educationalInformation,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
                ),
                WhiteHorseSquareButton(
                  whiteHorseSquareType:
                      WhiteHorseSquareType.businessGroupStartupAndEducation,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
                ),
                WhiteHorseSquareButton(
                  whiteHorseSquareType:
                      WhiteHorseSquareType.recruitmentAndInvitation,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
                ),
                WhiteHorseSquareButton(
                  whiteHorseSquareType:
                      WhiteHorseSquareType.whiteHorseBulletinBoard,
                  currentType: currentType,
                  onTap: updateWhiteHorseSquareType,
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
