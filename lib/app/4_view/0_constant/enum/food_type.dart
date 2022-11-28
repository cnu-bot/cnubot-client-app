enum FoodType {
  ramen('라면&간식'),
  koreanFood('한식'),
  westernFood('양식'),
  japaneseFood('일식'),
  chineseFood('중식'),
  snack('스낵'),
  undefined('');

  const FoodType(this.displayName);
  final String displayName;

  factory FoodType.getByDisplayName(String displayName) {
    return FoodType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => FoodType.undefined);
  }
}
