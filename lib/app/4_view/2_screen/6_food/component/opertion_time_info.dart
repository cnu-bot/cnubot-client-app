import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/food_type.dart';

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
