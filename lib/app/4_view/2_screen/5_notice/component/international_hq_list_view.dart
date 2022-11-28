import 'package:cnubot_app/app/4_view/0_constant/enum/international_hq_type.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_notice/component/international_hq_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InternationalHqListView extends StatelessWidget {
  const InternationalHqListView({
    Key? key,
    required this.currentType,
    required this.updateInternationalHqType,
  }) : super(key: key);
  final InternationalHqType currentType;
  final Function updateInternationalHqType;
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
                InternationalHqButton(
                  internationalHqType: InternationalHqType.studentRecruiting,
                  currentType: currentType,
                  onTap: updateInternationalHqType,
                ),
                InternationalHqButton(
                  internationalHqType: InternationalHqType.event,
                  currentType: currentType,
                  onTap: updateInternationalHqType,
                ),
                InternationalHqButton(
                  internationalHqType: InternationalHqType.jobAndCareer,
                  currentType: currentType,
                  onTap: updateInternationalHqType,
                ),
                InternationalHqButton(
                  internationalHqType: InternationalHqType.formAndData,
                  currentType: currentType,
                  onTap: updateInternationalHqType,
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
