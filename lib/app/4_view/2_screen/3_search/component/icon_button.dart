import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);
  final IconData icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: kSecondaryGray),
        child: Icon(
          icon,
          color: kPrimaryBlue,
        ),
      ),
    );
  }
}
