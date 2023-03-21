import 'package:cached_network_image/cached_network_image.dart';
import 'package:cnubot_app/app/1_data/0_model/first_sh_food_model.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

const String noFoodImageLink =
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQkAAAC4CAMAAADHV+kyAAAAM1BMVEX////MzMyrq6vX19fq6urv7+/Y2NjAwMD19fX5+fmxsbHQ0NDf39+1tbXl5eXc3Ny7u7tOeLhWAAADrElEQVR4nO2b2WKjIBRAFTSiGMn/f+1wWdSYNtOxaTPiOQ+NEUzhyGVxqSoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACiQfrroXVym/t1lfym9rneji1Lh9ouoa/fu0r8S+x0T9t2lfyWxmV/+mRhU7y79K9ndyF2JJto9B7aYSGAic2YTfeO0m6dTJzbRxAHXTvHreU008ywiqjitCbOaUIX8pzUxrkxcZMdZTfTrWbmVXvO0Ju7WG6bCBCaq9WWMU0dHNa1MhBXbaU2su0wJjrOYMKNrNrvaWUVMOYcJI7UetzsvwYNOuU9hIkXCVkVlpmma857CRB4npmcHnsHEcrn7mYoTmFiPl9tuc0X5Jpp6zSppc5uneBPm/gaIzWmNtfexUrqJfnsnyIZpVAyZOxWlm7jUW0RF7x570MJNjA8i5MLlNC+/Vj1o2SamD0Tcs6go2kT7VxErayWbMF+5b27vtL2t2D/AYuJh2PhERRxMSjbxOGw8VVGuiY+GjU9UhNlmsSb+Pmws6JKvY35l2FiQWz+FmvjSsLHClWri3x9FdIWa2PEo4lSkiV0Pp+oSTezn3aV/JZjIYCKDiQwmMpjIYCLDWw0Z3nTJ8PbTDG/EAQAAAAAAAPwuWocn9Y3W8tG7uqtdvyQaSUmXH5zW8TmzlDlsuq7rnAl5I+YXC/9SlFLy1ESjlP87DUoY2jmxkRQVZfmNaMClPWEroMMPBZ484f1/48veVcmEGdTVn9VBDSYniomruskXO5u4xmO8ORUOuCkneeujt4mrnMZgolaDxEE/qDonionuFprN1ecMJlq/oUKFr8lIk/IeGn8q1TWZGFS8Rm1lT0wMJpzsn1TXRRO1sp20AomXafVDhzfh6+OiiVyxMXQa1WzCqEHqPyYTg2rH4Mof1K9+6PAmfBMY+mQiVqbZmKg6NfbeRjQhFvrQz8Z8nbD0mG+ryXfxRff9gn5uYooREk10EiuddCUxX6q/Urfk5KBIJWRUfBYdsbc00YRJ535YouNO42EJlZaKKvnIPeYtJyYTOoybwUSeQvgpRZvUFWSiiQ38s1E0NIQxmbjFbrOLTeXWV0WZ8PVKM6vBarudWUnot00VTbRpKjHKp8ysrNZdNBFnVof1EU206slse+4ExUSOHN9w3BIqq7FDP/yLg5AWU2NagY22s+NmBTa/TD36E+7ySR/DfuP8AeEN87wCO2ybAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAf5w/pNR2oA/UcowAAAABJRU5ErkJggg==';

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
                  imageUrl: firstShFoodModel.imageUrl ?? noFoodImageLink,
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
                    firstShFoodModel.foodName.replaceAll(' ', '\n'),
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
