enum InternationalHqType {
  studentRecruiting('Student Recruiting'),
  event('Event'),
  jobAndCareer('Job&Career'),
  formAndData('Form&Data'),
  undefined('');

  const InternationalHqType(this.displayName);
  final String displayName;

  factory InternationalHqType.getByDisplayName(String displayName) {
    return InternationalHqType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => InternationalHqType.undefined);
  }
}
