enum DayType {
  today('오늘'),
  mon('월'),
  tue('화'),
  wed('수'),
  thu('목'),
  fri('금'),
  sat('토'),
  sun('일'),
  undefined('');

  const DayType(this.displayName);
  final String displayName;

  factory DayType.getByDisplayName(String displayName) {
    return DayType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => DayType.undefined);
  }
}
