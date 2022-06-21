import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'controllers/mainController.dart';
import 'helper/binding/binding.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'screens/splash_without_onBoarding/splash_withoutOnBoarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color =
    {
      50: const Color.fromRGBO(51, 153, 255, .1),
      100: const Color.fromRGBO(51, 153, 255, .2),
      200: const Color.fromRGBO(51, 153, 255, .3),
      300: const Color.fromRGBO(51, 153, 255, .4),
      400: const Color.fromRGBO(51, 153, 255, .5),
      500: const Color.fromRGBO(51, 153, 255, .6),
      600: const Color.fromRGBO(51, 153, 255, .7),
      700: const Color.fromRGBO(51, 153, 255, .8),
      800: const Color.fromRGBO(51, 153, 255, .9),
      900: const Color.fromRGBO(51, 153, 255, 1),
    };
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MaterialColor(0xffFB662E, color),
          fontFamily: "Lato-Bold"
      ),
      home: GetBuilder<MainController>(
        init: MainController(),
        builder: (controller) =>
        controller.isFirstTime
            ? const SplashScreen()
            : const SplashScreen2(),
      ),
    );
  }
}
