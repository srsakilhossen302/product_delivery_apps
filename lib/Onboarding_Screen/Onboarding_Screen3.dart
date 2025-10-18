import 'package:flutter/material.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_In.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_Up.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 119),
              child: Container(
                  width: 420,
                  height: 300,
                  child: Image.asset("assets/images/img_2.png")),
            ),
            SizedBox(height: 48),
            Container(
              width: 335,
              height: 106,
              child: Column(
                children: [
                  Text(
                    "Ready to Deliver?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff139F25),
                    ),
                  ),
        
                  SizedBox(height: 16),
                  Text(
                    "Let’s get your parcels moving! With just a few "
                        "taps, your package is on its way. Speedy, secure,"
                        " and hassle-free deliveries—every time.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 82),
            /*Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButttonSignUpDesign(),
                SizedBox(height: 20),
                CustomButttonOnboardingSignIn()
        
              ],
            ) */
          ],
        ),
      ),
    );
  }
}
