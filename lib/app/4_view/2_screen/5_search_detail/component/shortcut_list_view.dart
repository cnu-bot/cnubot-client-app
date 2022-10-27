import 'package:cnubot_app/app/4_view/0_constant/enum/shortcut_menu_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_search_detail/component/shortcut_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortcutListView extends StatelessWidget {
  const ShortcutListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 13.h, 0, 0),
      height: 29.h,
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
                const ShortcutMenuButton(
                    shortcutMenuListType:
                        ShortcutMenuListType.todayDormitoryFood),
                const ShortcutMenuButton(
                    shortcutMenuListType:
                        ShortcutMenuListType.today2studentHallFood),
                const ShortcutMenuButton(
                    shortcutMenuListType:
                        ShortcutMenuListType.whiteHorseSquareNews),
                const ShortcutMenuButton(
                    shortcutMenuListType: ShortcutMenuListType
                        .whiteHorseSquareAcademicInformation),
                const ShortcutMenuButton(
                    shortcutMenuListType:
                        ShortcutMenuListType.studentRecruiting),
              ],
            ),
          )
        ],
      ),
    );
  }
}
