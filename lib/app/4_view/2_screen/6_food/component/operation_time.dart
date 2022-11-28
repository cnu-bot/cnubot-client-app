import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/food_type.dart';
import 'package:cnubot_app/app/4_view/1_component/0_button/gray_time_button.dart';
import 'package:cnubot_app/app/4_view/1_component/1_layout/header/top_text.dart';
import 'package:cnubot_app/app/4_view/2_screen/6_food/component/operation_time_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OperationTime extends StatelessWidget {
  const OperationTime({
    Key? key,
    required this.cafeteriaType,
    required this.foodType,
  }) : super(key: key);
  final CafeteriaType cafeteriaType;
  final FoodType foodType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopText(
          text: '운영시간',
        ),
        SizedBox(
          height: 13.h,
        ),
        SizedBox(
          height: 80.h,
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
                    OperationTimeBox(
                      time: '아침',
                      cafeteriaType: cafeteriaType,
                      foodType: foodType,
                    ),
                    OperationTimeBox(
                      time: '점심',
                      cafeteriaType: cafeteriaType,
                      foodType: foodType,
                    ),
                    OperationTimeBox(
                      time: '저녁',
                      cafeteriaType: cafeteriaType,
                      foodType: foodType,
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OperationTimeBox extends StatelessWidget {
  const OperationTimeBox({
    Key? key,
    required this.time,
    required this.cafeteriaType,
    required this.foodType,
  }) : super(key: key);

  final String time;
  final CafeteriaType cafeteriaType;
  final FoodType foodType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cafeteriaType == CafeteriaType.studentHall1
                ? GrayTimeButton(
                    text: operationTimeInfo[cafeteriaType.displayName]
                        [foodType.displayName][time]['displayName'],
                  )
                : GrayTimeButton(
                    text: operationTimeInfo[cafeteriaType.displayName][time]
                        ['displayName'],
                  ),
            SizedBox(
              height: 7.h,
            ),
            cafeteriaType == CafeteriaType.studentHall1
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0;
                          i <
                              operationTimeInfo[cafeteriaType.displayName]
                                          [foodType.displayName][time]
                                      ['operationTime']
                                  .length;
                          i++)
                        OperationTimeText(
                          operationTime:
                              operationTimeInfo[cafeteriaType.displayName]
                                      [foodType.displayName][time]
                                  ['operationTime'][i],
                        )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0;
                          i <
                              operationTimeInfo[cafeteriaType.displayName][time]
                                      ['operationTime']
                                  .length;
                          i++)
                        OperationTimeText(
                          operationTime:
                              operationTimeInfo[cafeteriaType.displayName][time]
                                  ['operationTime'][i],
                        )
                    ],
                  ),
          ],
        ),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }
}

Map<String, dynamic> operationTimeInfo = {
  // 기숙사
  CafeteriaType.dormitory.displayName: {
    '아침': {
      'displayName': '아침',
      'operationTime': [
        {
          'text': '07:30-09:00',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '07:30-09:00',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '점심': {
      'displayName': '점심',
      'operationTime': [
        {
          'text': '11:30-13:30',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '11:30-13:30',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '저녁': {
      'displayName': '저녁',
      'operationTime': [
        {
          'text': '17:00-19:00',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '17:30-19:00',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
  },
  // 제1 학생회관
  CafeteriaType.studentHall1.displayName: {
    // 라면&간식
    FoodType.ramen.displayName: {
      '아침': {
        'displayName': '아침',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '점심': {
        'displayName': '점심',
        'operationTime': [
          {
            'text': '10:00-14:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '저녁': {
        'displayName': '저녁',
        'operationTime': [
          {
            'text': '17:30-19:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
    },
    // 양식
    FoodType.westernFood.displayName: {
      '아침': {
        'displayName': '아침',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '점심': {
        'displayName': '점심',
        'operationTime': [
          {
            'text': '11:00-14:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '저녁': {
        'displayName': '저녁',
        'operationTime': [
          {
            'text': '17:30-19:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
    },
    // 스낵
    FoodType.snack.displayName: {
      '아침': {
        'displayName': '아침',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '점심': {
        'displayName': '점심',
        'operationTime': [
          {
            'text': '11:00-14:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '저녁': {
        'displayName': '저녁',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
    },
    // 한식
    FoodType.koreanFood.displayName: {
      '아침': {
        'displayName': '아침',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '점심': {
        'displayName': '점심',
        'operationTime': [
          {
            'text': '11:00-14:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '저녁': {
        'displayName': '저녁',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
    },
    // 일식
    FoodType.japaneseFood.displayName: {
      '아침': {
        'displayName': '아침',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '점심': {
        'displayName': '점심',
        'operationTime': [
          {
            'text': '11:00-14:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '저녁': {
        'displayName': '저녁',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
    },
    // 중식
    FoodType.chineseFood.displayName: {
      '아침': {
        'displayName': '아침',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '점심': {
        'displayName': '점심',
        'operationTime': [
          {
            'text': '11:00-14:00',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
      '저녁': {
        'displayName': '저녁',
        'operationTime': [
          {
            'text': '미운영',
            'openWeekday': true,
            'openHoliday': false,
          },
          {
            'text': '미운영',
            'openWeekday': false,
            'openHoliday': true,
          },
        ],
      },
    },
  },
  // 제2 학생회관
  CafeteriaType.studentHall2.displayName: {
    '아침': {
      'displayName': '천원의 아침',
      'operationTime': [
        {
          'text': '08:00-09:00',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '점심': {
      'displayName': '점심',
      'operationTime': [
        {
          'text': '11:30-13:30',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '저녁': {
      'displayName': '저녁',
      'operationTime': [
        {
          'text': '미운영',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
  },
  // 제3 학생회관
  CafeteriaType.studentHall3.displayName: {
    '아침': {
      'displayName': '천원의 아침',
      'operationTime': [
        {
          'text': '08:00-09:00',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '점심': {
      'displayName': '점심',
      'operationTime': [
        {
          'text': '11:30-13:30',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '저녁': {
      'displayName': '저녁',
      'operationTime': [
        {
          'text': '미운영',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
  },
  // 제4 학생회관
  CafeteriaType.studentHall4.displayName: {
    '아침': {
      'displayName': '천원의 아침',
      'operationTime': [
        {
          'text': '08:00-09:00',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '점심': {
      'displayName': '점심',
      'operationTime': [
        {
          'text': '11:30-13:30',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '저녁': {
      'displayName': '저녁',
      'operationTime': [
        {
          'text': '미운영',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
  },
  // 생활과학대학
  CafeteriaType.collegeOfLifeSciences.displayName: {
    '아침': {
      'displayName': '천원의 아침',
      'operationTime': [
        {
          'text': '08:00-09:00',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '점심': {
      'displayName': '점심',
      'operationTime': [
        {
          'text': '11:30-13:30',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
    '저녁': {
      'displayName': '저녁',
      'operationTime': [
        {
          'text': '미운영',
          'openWeekday': true,
          'openHoliday': false,
        },
        {
          'text': '미운영',
          'openWeekday': false,
          'openHoliday': true,
        },
      ],
    },
  },
};
