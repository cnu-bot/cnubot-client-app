import 'package:cnubot_app/app/4_view/2_home/home_binding.dart';
import 'package:cnubot_app/app/4_view/2_home/home_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.home, page: () => const HomeScreen()),
        ]),
  ];
}
