import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';
import 'package:product_delivery_apps/Custom_design/Continue_with_Google_Button.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import 'Forgot_Password_Controller.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late final ForgotPasswordController controller;
  @override
  void initState(){
    super.initState();
    controller= Get.put(ForgotPasswordController());
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Color(0xff333333)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff139F25),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Enter the phone number associated with "
                  "your account and we’ll send you OTP to reset"
                  " your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff757575),
                  ),
                ),
              ),
              const SizedBox(height: 36),

              ///  phone
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Phone",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.PhoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Ex : +980010101010",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),
              CustomButttonDesign(
                text: "Confirm",
                onPressed: () {
                  controller.signIn(); /// Call the signIn method
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
