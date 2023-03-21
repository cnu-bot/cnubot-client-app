import 'package:cnubot_app/app/4_view/2_screen/2_onboarding/component/full_page_container.dart';
import 'package:cnubot_app/app/4_view/2_screen/2_onboarding/onboarding_constants.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return Scaffold(
        body: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            children: pageList
                .map((page) => FullPageContainer(
                    beginColor: page['beginColor'],
                    endColor: page['endColor'],
                    child: page['child']))
                .toList()));
  }
}
