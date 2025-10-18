import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/Splash_Screen/Splash_Screen_Controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff139F25),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 192,
              height: 192,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Color(0xffFFFFFF))],
              ),
              child: Center(
                child: Text(
                  "logo",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
