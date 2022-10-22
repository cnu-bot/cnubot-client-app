import 'package:cnubot_app/app/4_view/2_screen/0_home/home_binding.dart';
import 'package:cnubot_app/app/4_view/2_screen/0_home/home_screen.dart';
import 'package:cnubot_app/app/4_view/2_screen/2_onboarding/onboarding_screen.dart';
import 'package:cnubot_app/app/4_view/2_screen/4_search/search_screen.dart';
import 'package:cnubot_app/app/4_view/2_screen/5_search_detail/search_detail_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  // hive 를 통해 제어 필요
  static const initial = Routes.searchDetail;
  // static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.cupertino,
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.search,
      page: () => const SearchScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.searchDetail,
      page: () => const SearchDetailScreen(),
      transition: Transition.cupertino,
    ),
  ];
}
