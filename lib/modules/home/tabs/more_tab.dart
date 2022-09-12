import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreTab extends StatelessWidget {
  void openDialog(String title, Widget content) {
    Get.dialog(AlertDialog(
      title: Text(title),
      content: content,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      InkWell(
        onTap: () {
          openDialog(
              "문의사항",
              InkWell(
                onTap: () =>
                    launchUrl(Uri.parse("https://open.kakao.com/o/sm0C6bZc")),
                child: const Text(
                  "카카오톡 오픈채팅하기",
                  style: TextStyle(color: Colors.blue),
                ),
              ));
        },
        child: const ListTile(
          title: Center(child: Text('문의사항')),
        ),
      ),
      const Divider(),
      ListTile(
        onTap: () {
          openDialog("개발자", const Text("박찬혁 조해창"));
        },
        title: const Center(child: Text('소개')),
      ),
    ]);
  }
}
