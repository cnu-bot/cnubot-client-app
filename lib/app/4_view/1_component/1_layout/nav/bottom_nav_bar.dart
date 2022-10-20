import 'package:cnubot_app/app/3_util/navigate_util.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/nav/nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kPrimaryBlue,
      currentIndex: currentIndex,
      onTap: navigationMove,
      selectedItemColor: kWhiteColor,
      unselectedItemColor: kWhiteColor,
      selectedLabelStyle: kNavLabel,
      unselectedLabelStyle: kNavLabel,
      items: const [
        BottomNavigationBarItem(
          icon: NavItem(
            assetName: 'n',
            selected: true,
          ),
          label: '뉴스',
        ),
        BottomNavigationBarItem(
          icon: NavItem(
            assetName: 'm',
            selected: false,
          ),
          label: '학교',
        ),
        BottomNavigationBarItem(
          icon: NavItem(
            assetName: 't',
            selected: false,
          ),
          label: '교통',
        ),
        BottomNavigationBarItem(
          icon: NavItem(
            assetName: 'l',
            selected: false,
          ),
          label: '열람실',
        ),
      ],
    );
  }
}
