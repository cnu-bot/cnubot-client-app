enum CafeteriaType {
  dormitory('기숙사'),
  studentHall1('제1 학생회관'),
  studentHall2('제2 학생회관'),
  studentHall3('제3 학생회관'),
  studentHall4('제4 학생회관'),
  collegeOfLifeSciences('생활과학대학'),
  undefined('');

  const CafeteriaType(this.displayName);
  final String displayName;

  factory CafeteriaType.getByDisplayName(String displayName) {
    return CafeteriaType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => CafeteriaType.undefined);
  }
}
