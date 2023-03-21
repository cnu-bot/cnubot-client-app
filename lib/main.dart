import 'package:cnubot_app/app/0_routes/app_pages.dart';
import 'package:cnubot_app/app/1_data/3_environment/environment.dart';
import 'package:cnubot_app/app/4_view/0_constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvironmentConstant.setEnvironment();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'cnubot',
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
          theme: ThemeData(
            scaffoldBackgroundColor: kWhiteColor,
            primarySwatch: Colors.blue,
          ),
        );
      },
    );
  }
}
