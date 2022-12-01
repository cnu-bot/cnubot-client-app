enum FoodType {
  ramen('라면&간식', 'RAMYUN_AND_SNACK'),
  koreanFood('한식', 'KOREAN_FOOD'),
  westernFood('양식', 'WESTERN_FOOD'),
  japaneseFood('일식', 'JAPANESE_FOOD'),
  chineseFood('중식', 'CHINESE_FOOD'),
  snack('스낵', 'SNACK'),
  undefined('', '');

  const FoodType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory FoodType.getByDisplayName(String displayName) {
    return FoodType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => FoodType.undefined);
  }
}
