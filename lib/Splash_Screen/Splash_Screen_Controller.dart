import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../App_Routes/app_routes.dart';

class SplashController extends GetxController{
@override
  void onInit(){
  super.onInit();

  ///4 secnt thakbe tar pre Onboarding Screen cle jabe

  Timer(Duration(seconds: 2), (){
    Get.offNamed(AppRoutes.slide);
  });
}
}