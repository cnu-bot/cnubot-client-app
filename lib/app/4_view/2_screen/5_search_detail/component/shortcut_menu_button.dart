import 'package:cnubot_app/app/4_view/0_constant/enum/shortcut_menu_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/gray_round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShortcutMenuButton extends StatelessWidget {
  const ShortcutMenuButton({Key? key, required this.shortcutMenuListType})
      : super(key: key);

  final ShortcutMenuListType shortcutMenuListType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: 학식까지 하고 라우팅을 바로 시켜줄 수 있어야함
        print(shortcutMenuListType.displayName);
      },
      child: GrayRoundButton(
        text: shortcutMenuListType.displayName,
      ),
    );
  }
}
