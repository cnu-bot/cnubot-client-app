import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/nav_page_type.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/nav/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentPage,
    required this.visible,
    required this.updateCurrentPage,
  }) : super(key: key);

  final NavPage currentPage;
  final bool visible;
  final void Function(int)? updateCurrentPage;
  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return AnimatedContainer(
      height: visible ? (bottomPadding + 87).h : 0,
      duration: const Duration(milliseconds: 200),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryBlue,
        currentIndex: currentPage.index,
        onTap: updateCurrentPage,
        selectedItemColor: kWhiteColor,
        unselectedItemColor: kWhiteColor,
        selectedLabelStyle: kNavLabel,
        unselectedLabelStyle: kNavLabel,
        items: [
          BottomNavigationBarItem(
            icon: NavItem(
              assetName: 'n',
              selected: currentPage.index == 0 ? true : false,
            ),
            label: NavPage.notice.displayName,
          ),
          BottomNavigationBarItem(
            icon: NavItem(
              assetName: 'm',
              selected: currentPage.index == 1 ? true : false,
            ),
            label: NavPage.food.displayName,
          ),
          BottomNavigationBarItem(
            icon: NavItem(
              assetName: 't',
              selected: currentPage.index == 2 ? true : false,
            ),
            label: NavPage.bus.displayName,
          ),
          BottomNavigationBarItem(
            icon: NavItem(
              assetName: 'l',
              selected: currentPage.index == 3 ? true : false,
            ),
            label: NavPage.library.displayName,
          ),
        ],
      ),
    );
  }
}
