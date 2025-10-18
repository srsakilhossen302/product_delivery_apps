import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App_Routes/app_routes.dart';

class CustomButttonOnboardingSignIn extends StatelessWidget {
  const CustomButttonOnboardingSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.signinpage);
      },
      child: Container(
        width: 295,
        height: 52,
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(26),
            border: Border.all(
              color: Color(0xff139F25),
              width: 1,
            )
        ),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }
}
