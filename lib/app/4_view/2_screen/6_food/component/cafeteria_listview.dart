import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/cafeteria_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CafeteriaListView extends StatelessWidget {
  const CafeteriaListView({
    Key? key,
    required this.currentType,
    required this.updateBoardType,
  }) : super(key: key);
  final CafeteriaType currentType;
  final Function updateBoardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 13.h, 0, 0),
      height: 34.h,
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
                for (int i = 0; i < CafeteriaType.values.length; i++)
                  if (CafeteriaType.values[i] != CafeteriaType.undefined)
                    CafeteriaButton(
                      cafeteriaType: CafeteriaType.values[i],
                      currentType: currentType,
                      onTap: updateBoardType,
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
