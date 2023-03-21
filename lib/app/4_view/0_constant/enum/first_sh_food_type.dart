enum FirstShFoodType {
  ramen('라면&간식', 'RAMYUN_AND_SNACK'),
  koreanFood('한식', 'KOREAN_FOOD'),
  westernFood('양식', 'WESTERN_FOOD'),
  japaneseFood('일식', 'JAPANESE_FOOD'),
  chineseFood('중식', 'CHINESE_FOOD'),
  snack('스낵', 'FUSION_SNACK'),
  undefined('', '');

  const FirstShFoodType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory FirstShFoodType.getByDisplayName(String displayName) {
    return FirstShFoodType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => FirstShFoodType.undefined);
  }
  factory FirstShFoodType.getByParam(String param) {
    return FirstShFoodType.values.firstWhere((value) => value.param == param,
        orElse: () => FirstShFoodType.undefined);
  }
}
