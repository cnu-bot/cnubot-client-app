enum TimeType {
  breakfast('아침', 'BREAKFAST'),
  lunch('점심', 'LUNCH'),
  dinner('저녁', 'DINNER'),
  undefined('', '');

  const TimeType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory TimeType.getByDisplayName(String displayName) {
    return TimeType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => TimeType.undefined);
  }

  factory TimeType.getByParam(String param) {
    return TimeType.values.firstWhere((value) => value.param == param,
        orElse: () => TimeType.undefined);
  }
}
