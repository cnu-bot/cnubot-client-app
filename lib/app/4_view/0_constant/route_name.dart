enum RouteName {
  notice('뉴스'),
  food('학식'),
  bus('교통'),
  library('열람실'),
  undefined('');

  const RouteName(this.displayName);
  final String displayName;

  factory RouteName.getByDisplayName(String displayName) {
    return RouteName.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => RouteName.undefined);
  }
}
