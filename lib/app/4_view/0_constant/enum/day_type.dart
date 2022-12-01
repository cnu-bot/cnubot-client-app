enum DayType {
  today('오늘', 'TODAY'),
  mon('월', 'MONDAY'),
  tue('화', 'TUESDAY'),
  wed('수', 'WEDNESDAY'),
  thu('목', 'THURSDAY'),
  fri('금', 'FRIDAY'),
  sat('토', 'SATURDAY'),
  sun('일', 'SUNDAY'),
  undefined('', '');

  const DayType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory DayType.getByDisplayName(String displayName) {
    return DayType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => DayType.undefined);
  }
}
