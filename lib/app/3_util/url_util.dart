import 'package:cnubot_app/app/3_util/dialog_util.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchWeblink(String inputUrl) async {
  final Uri url = Uri.parse(inputUrl);

  if (!await launchUrl(url)) {
    getDialog('열 수 없는 링크입니다.');
  }
}
