enum InternationalHqType {
  studentRecruiting('Student Recruiting', 'STUDENT_RECRUIT'),
  event('Event', 'EVENT'),
  jobAndCareer('Job&Career', 'JOB_CAREER'),
  formAndData('Form&Data', 'FORM_DATA'),
  undefined('', '');

  const InternationalHqType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory InternationalHqType.getByDisplayName(String displayName) {
    return InternationalHqType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => InternationalHqType.undefined);
  }
}
