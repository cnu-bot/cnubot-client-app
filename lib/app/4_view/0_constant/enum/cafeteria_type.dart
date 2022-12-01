enum CafeteriaType {
  dormitory('기숙사', 'DORMITORY'),
  studentHall1('제1 학생회관', 'FIRST_STUDENT_HALL'),
  studentHall2('제2 학생회관', 'SECOND_STUDENT_HALL'),
  studentHall3('제3 학생회관', 'THIRD_STUDENT_HALL'),
  studentHall4('제4 학생회관', 'FOURTH_STUDENT_HALL'),
  collegeOfLifeSciences('생활과학대학', 'COLLEGE_OF_LIFE_SCIENCE'),
  undefined('', '');

  const CafeteriaType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory CafeteriaType.getByDisplayName(String displayName) {
    return CafeteriaType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => CafeteriaType.undefined);
  }
}
