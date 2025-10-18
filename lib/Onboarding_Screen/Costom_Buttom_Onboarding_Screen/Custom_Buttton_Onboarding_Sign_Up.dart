import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App_Routes/app_routes.dart';

class CustomButttonSignUpDesign extends StatelessWidget {
  const CustomButttonSignUpDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// Handle button tap
        Get.toNamed(AppRoutes.createAccount);
      },
      child: Container(
        width: 295,
        height: 52,
        decoration: BoxDecoration(
          color: Color(0xff139F25),
          borderRadius: BorderRadius.circular(26),
        ),
        child: Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
