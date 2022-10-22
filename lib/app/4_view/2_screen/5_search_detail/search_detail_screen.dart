import 'package:cnubot_app/app/4_view/1_component/1_layout/header/go_to_home_button.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_circle.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_logo.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_text.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_search_detail/component/shortcut_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchDetailScreen extends StatelessWidget {
  const SearchDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const GoToHomeButton(),
              const TopCircle(),
              const TopLogo(),
              Container(
                margin: EdgeInsets.fromLTRB(0.w, 142.h, 0, 0),
                child: Column(
                  // ignore: prefer_const_constructors
                  children: [
                    const TopText(text: "바로가기"),
                    ShortcutListView(),
                    SizedBox(
                      height: 33.h,
                    ),
                    const TopText(text: "실시간 게시물"),
                    ShortcutListView(),
                    SizedBox(
                      height: 33.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
