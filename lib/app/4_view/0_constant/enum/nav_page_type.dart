enum NavPage {
  notice('뉴스'),
  food('학식'),
  bus('교통'),
  library('열람실'),
  undefined('');

  const NavPage(this.displayName);
  final String displayName;

  factory NavPage.getByIndex(int index) {
    return NavPage.values.firstWhere((value) => value.index == index,
        orElse: () => NavPage.undefined);
  }

  factory NavPage.getByDisplayName(String displayName) {
    return NavPage.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => NavPage.undefined);
  }
}
