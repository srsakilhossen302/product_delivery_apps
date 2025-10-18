import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'App_Routes/app_routes.dart';
import 'Onboarding_Screen/Onboarding_Screen1_Controller.dart';
import 'Splash_Screen/Splash_Screen.dart';
import 'Splash_Screen/Splash_Screen_Controller.dart';
void main(){
  ///Dependency Injection
  Get.put(SplashController());
  Get.put(OnboardingScreen1Controller());
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
    );
  }
}
