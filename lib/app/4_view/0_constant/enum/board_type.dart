enum BoardType {
  whiteHorseSquare('백마광장'),
  internationalHq('국제교류본부'),
  undefined('');

  const BoardType(this.displayName);
  final String displayName;

  factory BoardType.getByDisplayName(String displayName) {
    return BoardType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => BoardType.undefined);
  }
}
