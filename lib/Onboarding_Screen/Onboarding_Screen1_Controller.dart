import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';

class OnboardingScreen1Controller extends GetxController{
  final PageController pageController = PageController();
  var currentIndex = 0.obs;

  void onPageChanged(int index){
    currentIndex.value = index;
  }

  void nextPage(){
    if(currentIndex.value < 2){
      pageController.nextPage(duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,);
    }
  }

  void previousPage(){
    if(currentIndex.value > 0){
      pageController.previousPage(duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    }
  }

  /*var isLoading = false.obs;
  void goToOnboardingScreen2() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 4));
    isLoading.value= false;
    Get.offNamed(AppRoutes.slide);
  } */
}