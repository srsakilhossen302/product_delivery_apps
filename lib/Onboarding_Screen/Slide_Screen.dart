import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/Onboarding_Screen/Onboarding_Screen1.dart';
import 'package:product_delivery_apps/Onboarding_Screen/Onboarding_Screen2.dart';
import 'package:product_delivery_apps/Onboarding_Screen/Onboarding_Screen3.dart';

import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_In.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_Up.dart';
import 'Onboarding_Screen1_Controller.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  final controller = Get.put(OnboardingScreen1Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: const [
              OnboardingScreen1(),
              OnboardingScreen2(),
              OnboardingScreen3(),
            ],
          ),

          Positioned(
              top: 700,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButttonSignUpDesign(),
              SizedBox(height: 20),
              CustomButttonOnboardingSignIn()

            ],
          )),

          Positioned(
            bottom: 280,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: controller.currentIndex.value == index ? 8 : 10,
                    height: 8,
                    decoration: BoxDecoration(
                      color: controller.currentIndex.value == index
                          ? Colors.black
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
