enum WhiteHorseSquareType {
  news('새소식', 'NEWS'),
  academicInformation('학사정보', 'ACADEMIC_INFO'),
  cnuNews('CNU뉴스', 'CNU_NEWS'),
  educationalInformation('교육정보', 'EDUCATION_INFO'),
  businessGroupStartupAndEducation('사업단 창업, 교육', 'BUSINESS_GROUP_STARTUP'),
  recruitmentAndInvitation('채용/초빙', 'RECRUIT_INVITATION'),
  univCultureField('대학문화마당', 'UNIV_CULTURE_FIELD'),
  cnuMarket('CNU장터', 'CNU_MARKET'),
  jobSearch('구인', 'JOB_SEARCH'),
  jobOffer('구직', 'JOB_OFFER'),
  studyCompetition('스터디 및 공모전', 'STUDY_COMPETITION'),
  undefined('', '');

  const WhiteHorseSquareType(this.displayName, this.param);
  final String displayName;
  final String param;

  factory WhiteHorseSquareType.getByDisplayName(String displayName) {
    return WhiteHorseSquareType.values.firstWhere(
        (value) => value.displayName == displayName,
        orElse: () => WhiteHorseSquareType.undefined);
  }
}
