import 'package:cnubot_app/modules/home/home_binding.dart';
import 'package:cnubot_app/modules/home/home_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.HOME, page: () => HomeScreen()),
        ]),
  ];
}
