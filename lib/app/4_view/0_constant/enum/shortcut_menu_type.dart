enum ShortcutMenuListType {
  todayDormitoryFood('오늘의 기숙사 식단'),
  today2studentHallFood('오늘의 2학생회관 식단'),
  whiteHorseSquareNews('백마광장 새소식'),
  whiteHorseSquareAcademicInformation('백마광장 학사정보'),
  studentRecruiting('Student Recruiting'),
  undefined('');

  const ShortcutMenuListType(this.displayName);
  final String displayName;

  factory ShortcutMenuListType.getByDisplayName(String displayName) {
    return ShortcutMenuListType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => ShortcutMenuListType.undefined);
  }
}
