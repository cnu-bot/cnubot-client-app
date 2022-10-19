import 'package:cnubot_app/app/3_util/dialog_util.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchWeblink(String inputUrl) async {
  final Uri url = Uri.parse(inputUrl);

  if (!await launchUrl(url)) {
    getDialog('열 수 없는 링크입니다.');
  }
}

void navigationMove(int index) {
  if (index == 0) {
    // Get.offAllNamed(Routes.calendarMonth);
  } else if (index == 1) {
    // Get.offAllNamed(Routes.invite);
  } else if (index == 2) {
    // Get.offAllNamed(Routes.friend);
  }
}
