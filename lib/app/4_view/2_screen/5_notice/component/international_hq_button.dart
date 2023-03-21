import 'package:cnubot_app/app/4_view/0_constant/enum/international_hq_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/light_gray_button.dart';
import 'package:flutter/material.dart';

class InternationalHqButton extends StatelessWidget {
  const InternationalHqButton({
    Key? key,
    required this.internationalHqType,
    required this.currentType,
    this.onTap,
  }) : super(key: key);
  final InternationalHqType internationalHqType;
  final InternationalHqType currentType;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(internationalHqType);
        }
      },
      child: LightGrayButton(
        isSelected: internationalHqType == currentType,
        text: internationalHqType.displayName,
      ),
    );
  }
}
