import 'package:cnubot_app/app/1_data/0_model/first_sh_food_model.dart';
import 'package:cnubot_app/app/1_data/0_model/food_model.dart';
import 'package:cnubot_app/app/2_dio/dio_helper.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/cafeteria_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/day_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/first_sh_food_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/time_type.dart';

class FoodProvider {
  final DioHelper dioHelper;
  FoodProvider({required this.dioHelper});

  Future<List<FoodModel>> getFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    // List<dynamic> resultList = await dioHelper.getList(
    //   '/food/',
    //   param: paramMap,
    //   refresh: refresh,
    // );
    final List<FoodModel> foodModelList = [];
    final List<dynamic> resultList = [
      {
        'foodCourt': 'DORMITORY',
        'day': 'FRIDAY',
        'time': 'BREAKFAST',
        'type': '메인A(688kcal)',
        'foods': [
          '쌀밥[쌀:국내산]1',
          '식빵&쨈',
          '초코데니쉬빵',
          '씨리얼',
          '양상추샐러드',
          '사과',
          '*우유(공통)*',
        ]
      },
      {
        'foodCourt': 'DORMITORY',
        'day': 'FRIDAY',
        'time': 'LUNCH',
        'type': '메인A(688kcal)',
        'foods': [
          '식빵&쨈2',
          '초코데니쉬빵',
          '씨리얼',
          '양상추샐러드',
          '사과',
          '*우유(공통)*',
        ]
      },
      {
        'foodCourt': 'DORMITORY',
        'day': 'FRIDAY',
        'time': 'DINNER',
        'type': '메인A(688kcal)',
        'foods': [
          '식빵&쨈3',
          '초코데니쉬빵',
          '씨리얼',
          '양상추샐러드',
          '사과',
          '*우유(공통)*',
        ]
      },
      {
        'foodCourt': 'DORMITORY',
        'day': 'FRIDAY',
        'time': 'BREAKFAST',
        'type': '메인C(688kcal)',
        'foods': [
          '쌀밥[쌀:국내산]',
          '식빵&쨈4',
          '초코데니쉬빵',
          '씨리얼',
          '양상추샐러드',
          '사과',
          '*우유(공통)*',
        ]
      },
      {
        'foodCourt': 'DORMITORY',
        'day': 'FRIDAY',
        'time': 'LUNCH',
        'type': '메인C(688kcal)',
        'foods': [
          '식빵&쨈5',
          '초코데니쉬빵',
          '씨리얼',
          '양상추샐러드',
          '사과',
          '*우유(공통)*',
        ]
      },
      {
        'foodCourt': 'DORMITORY',
        'day': 'FRIDAY',
        'time': 'DINNER',
        'type': '메인C(688kcal)',
        'foods': [
          '식빵&쨈6',
          '초코데니쉬빵',
          '씨리얼',
          '양상추샐러드',
          '사과',
          '*우유(공통)*',
        ]
      },
    ];

    for (int i = 0; i < resultList.length; i++) {
      resultList[i]['foodCourt'] =
          CafeteriaType.getByParam(resultList[i]['foodCourt']).name;
      resultList[i]['day'] = DayType.getByParam(resultList[i]['day']).name;
      resultList[i]['time'] = TimeType.getByParam(resultList[i]['time']).name;
      final String type = resultList[i]['type'];
      final List<String> splitedType = type.split('(');
      resultList[i]['type'] = splitedType[0];
      resultList[i]['calorie'] = splitedType.length > 1
          ? int.parse(splitedType[1].split('kcal)')[0])
          : null;
      final FoodModel foodModel = FoodModel.fromJson(resultList[i]);
      foodModelList.add(foodModel);
    }
    return foodModelList;
  }

  Future<List<FirstShFoodModel>> getFirstShFoodModelList(
    Map<String, dynamic> paramMap, {
    bool? refresh,
  }) async {
    // List<dynamic> resultList = await dioHelper.getList(
    //   '/food/first-student-hall/',
    //   param: paramMap,
    //   refresh: refresh,
    // );
    final List<FirstShFoodModel> firstStudentHallFoodModel = [];
    List<dynamic> resultList = [];
    if (paramMap['firstHallType'] == 'CHINESE_FOOD' ||
        paramMap['firstHallType'] == 'WESTERN_FOOD' ||
        paramMap['firstHallType'] == 'RAMYUN_AND_SNACK') {
      resultList = [
        {
          'foodName': '차돌온면',
          'type': 'CHINESE_FOOD',
          'price': '6500',
          'imageUrl':
              'https://i3.ruliweb.com/ori/21/12/08/17d99fad23c1bd18.jpg',
        },
        {
          'foodName': '매운차돌온면',
          'type': 'CHINESE_FOOD',
          'price': '6500',
          'imageUrl':
              'https://i3.ruliweb.com/ori/21/12/08/17d99fad23c1bd18.jpg',
        },
        {
          'foodName': '비빔면',
          'type': 'CHINESE_FOOD',
          'price': '6500',
          'imageUrl':
              'https://i3.ruliweb.com/ori/21/12/08/17d99fad23c1bd18.jpg',
        },
        {
          'foodName': '중국식물냉면',
          'type': 'CHINESE_FOOD',
          'price': '6500',
          'imageUrl':
              'https://i3.ruliweb.com/ori/21/12/08/17d99fad23c1bd18.jpg',
        },
      ];
    } else {
      resultList = [
        {
          'foodName': '소고기고추장비빔밥',
          'type': 'KOREAN_FOOD',
          'price': '6500',
          'imageUrl':
              'https://health.chosun.com/site/data/img_dir/2021/01/27/2021012702508_0.jpg',
        },
        {
          'foodName': '해장 황태 콩나물국',
          'type': 'KOREAN_FOOD',
          'price': '6500',
          'imageUrl':
              'https://health.chosun.com/site/data/img_dir/2021/01/27/2021012702508_0.jpg',
        },
        {
          'foodName': '김치찌개',
          'type': 'KOREAN_FOOD',
          'price': '6500',
          'imageUrl':
              'https://health.chosun.com/site/data/img_dir/2021/01/27/2021012702508_0.jpg',
        },
      ];
    }
    for (int i = 0; i < resultList.length; i++) {
      resultList[i]['type'] =
          FirstShFoodType.getByParam(resultList[i]['type']).name;
      final FirstShFoodModel foodModel =
          FirstShFoodModel.fromJson(resultList[i]);
      firstStudentHallFoodModel.add(foodModel);
    }
    return firstStudentHallFoodModel;
  }
}
