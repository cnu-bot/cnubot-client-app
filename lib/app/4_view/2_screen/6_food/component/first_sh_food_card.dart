import 'package:cached_network_image/cached_network_image.dart';
import 'package:cnubot_app/app/1_data/0_model/first_sh_food_model.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class FirstShFoodCard extends StatelessWidget {
  const FirstShFoodCard({
    Key? key,
    required this.firstShFoodModel,
  }) : super(key: key);
  final FirstShFoodModel firstShFoodModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 25.w, 0),
      child: Column(
        children: [
          SizedBox(
            width: 110.w,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.r),
                topRight: Radius.circular(18.r),
              ),
              child: CachedNetworkImage(
                  imageUrl: firstShFoodModel.imageUrl,
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      width: 110.w,
                      height: 77.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.r),
                          topRight: Radius.circular(18.r),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: imageProvider,
                        ),
                      ),
                    );
                  },
                  placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: const Color(0xFFD6D6D6),
                        highlightColor: const Color(0xFFF5F5F5),
                        enabled: true,
                        child: SizedBox(
                          width: 110.w,
                          height: 77.w,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                  errorWidget: (context, url, error) {
                    return SizedBox(
                      width: 110.w,
                      height: 77.w,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: kGrayF1,
                        ),
                        child: Center(
                            child: Text(
                          '이미지가 없습니다',
                          style: kBody6.copyWith(
                            color: kGray7B,
                          ),
                        )),
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 7.w,
          ),
          SizedBox(
            width: 110.w,
            child: Row(
              children: [
                SizedBox(
                  width: 60.w,
                  child: Text(
                    firstShFoodModel.foodName,
                    textAlign: TextAlign.center,
                    style: kHeadline5.copyWith(
                      color: kBlue00,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: kGrayEE,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.w,
                    vertical: 4.h,
                  ),
                  child: Text(
                    '${firstShFoodModel.price}원',
                    style: kBody5.copyWith(
                      color: kGray6C,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
