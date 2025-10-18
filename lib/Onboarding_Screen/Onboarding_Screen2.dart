import 'package:flutter/material.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_In.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_Up.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 119),
              child: Container(child: Image.asset("assets/images/img_1.png")),
            ),
            SizedBox(height: 48),
            Container(
              width: 335,
              height: 106,
              child: Column(
                children: [
                  Text(
                    "Fast Deliveries, Anytime",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff139F25),
                    ),
                  ),

                  SizedBox(height: 16),
                  Text(
                    "Need a quick delivery? Simply book a ride, and"
                    " we’ll take care of the rest. Trust us to get "
                    "your parcels to their destination, safely and on time.",
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
           /* Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButttonSignUpDesign(),
                SizedBox(height: 20),
                CustomButttonOnboardingSignIn(),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}
