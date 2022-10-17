import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Map<String, dynamic>> pageList = [
  {
    'beginColor': 0xFF001655,
    'endColor': 0xFF003F94,
    'child': Center(
      child: Column(
        children: [
          SizedBox(
            height: 348.h,
          ),
          Text(
            '안녕하세요 !\n츠누봇 입니다',
            style: kHeadline2,
            textAlign: TextAlign.center,
          ),
          Image(
            width: 173.w,
            height: 173.h,
            image: const AssetImage("assets/images/common/memoji01.png"),
          )
        ],
      ),
    )
  },
  {
    'beginColor': 0xFF003F94,
    'endColor': 0xFF0048AA,
    'child': Center(
      child: Text(
        "츠누봇에서 여러 소식을\n받아보실 수 있습니다",
        style: kHeadline2,
        textAlign: TextAlign.center,
      ),
    )
  },
  {
    'beginColor': 0xFF0048AA,
    'endColor': 0xFF3568AC,
    'child': Center(
      child: Text(
        "소식을 받아보시겠습니까?",
        style: kHeadline2,
      ),
    )
  },
  {
    'beginColor': 0xFF3568AC,
    'endColor': 0xFFFFFFFF,
    'child': Stack(
      alignment: Alignment.center,
      children: [
        Center(
            child: Text("그렇다면\n츠누봇과 함께 해주세요!",
                textAlign: TextAlign.center,
                style: kHeadline2.copyWith(color: kPrimaryBlue))),
        Positioned(
            bottom: 95.h,
            child: SizedBox(
              width: 230.w,
              height: 44.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: kPrimaryBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.sp))),
                child: Text(
                  "츠누봇 바로가기",
                  style:
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 17.sp),
                ),
              ),
            ))
      ],
    )
  },
];
