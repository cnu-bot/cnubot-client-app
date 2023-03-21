String convertOrigin(String foodFullName) {
  final RegExp exp = RegExp(r'(\[.*\])');
  final RegExpMatch? match = exp.firstMatch(foodFullName);
  if (match == null) return '';
  String origin = match[0].toString();
  origin = origin.replaceAll('[', '').replaceAll(']', '');
  return origin;
}

String convertFoodName(String foodFullName) {
  return foodFullName.split('[')[0];
}
