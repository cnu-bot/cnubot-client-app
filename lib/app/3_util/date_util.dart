String convertDatetimeToYYYYMMDD(DateTime datetime) {
  String convertedDateTime =
      "${datetime.year.toString()}-${datetime.month.toString().padLeft(2, '0')}-${datetime.day.toString().padLeft(2, '0')}";
  return convertedDateTime;
}
