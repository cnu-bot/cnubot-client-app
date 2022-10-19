import 'package:cnubot_app/app/4_view/2_screen/0_home/home_binding.dart';
import 'package:cnubot_app/app/4_view/2_screen/0_home/home_screen.dart';
import 'package:cnubot_app/app/4_view/2_screen/2_onboarding/onboarding_screen.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_binding.dart';
import 'package:cnubot_app/app/4_view/2_screen/3_notice/notice_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  // hive 를 통해 제어 필요
  static const initial = Routes.onboarding;

  static final routes = [
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.noTransition,
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.notice,
      page: () => const NoticeScreen(),
      transition: Transition.noTransition,
      binding: NoticeBinding(),
    ),
  ];
}
