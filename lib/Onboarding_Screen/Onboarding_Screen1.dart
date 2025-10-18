import 'package:flutter/material.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_In.dart';
import 'Costom_Buttom_Onboarding_Screen/Custom_Buttton_Onboarding_Sign_Up.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 119),
              child: Container(child: Image.asset("assets/images/img.png")),
            ),
            SizedBox(height: 48),
            Container(
              width: 335,
              height: 106,
              child: Column(
                children: [
                  Text(
                    "Welcome to Product Delivery,",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff139F25),
                    ),
                  ),
        
                  SizedBox(height: 16),
                  Text(
                    "Your go-to solution for fast, reliable parcel "
                        "delivery. Whether you're sending or receiving, we "
                                  "make it easy and quick.",
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
            //SizedBox(height: 82),
           /* Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButttonSignUpDesign(),
                SizedBox(height: 20),
                CustomButttonOnboardingSignIn()
        
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
