import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopText extends StatelessWidget {
  const TopText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18.w, 0, 0, 0),
      child: Row(
        children: [
          Text(
            text,
            style: kHeadline3,
          ),
        ],
      ),
    );
  }
}
