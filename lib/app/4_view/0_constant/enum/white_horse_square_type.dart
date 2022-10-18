
enum WhiteHorseSquareType {
  news('새소식'),
  academicInformation('학사정보'),
  cnuNews('CNU뉴스'),
  educationalInformation('교육정보'),
  businessGroupStartupAndEducation('사업단 창업, 교육'),
  recruitmentAndInvitation('채용/초빙'),
  whiteHorseBulletinBoard('백마게시판'),
  undefined('');

  const WhiteHorseSquareType(this.displayName);
  final String displayName;

  factory WhiteHorseSquareType.getByDisplayName(String displayName) {
    return WhiteHorseSquareType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => WhiteHorseSquareType.undefined);
  }
}
