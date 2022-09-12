import 'package:cnubot_app/shared/constants/font.dart';
import 'package:cnubot_app/shared/constants/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LibraryCard extends StatelessWidget {
  final String title;
  final String info;
  const LibraryCard({Key? key, required this.title, required this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: SizedBox(
        width: AppLayout.getScreenWidth() * 0.95,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: FontStyles.headLineStyle3.copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                info,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
