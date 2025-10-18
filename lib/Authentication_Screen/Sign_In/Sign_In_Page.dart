import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_delivery_apps/Custom_design/Continue_with_Google_Button.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import '../../App_Routes/app_routes.dart';
import 'Sign_In_Page_Controller.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final SignInController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(SignInController());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff139F25),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Log in to continue shopping and enjoy personalized offers",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff757575),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              /// Email / Phone
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email or Phone Number",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.emailPhoneController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Enter your email address or phone number",
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// Password label + field
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Obx(
                        () => TextField(
                      controller: controller.passwordController,
                      obscureText: controller.isObscure.value,
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff989898),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.isObscure.value ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: controller.toggleObscure,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.forgotpassword);
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff139F25),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              /// Sign In button uses controller.signIn()
              CustomButttonDesign(
                text: "Sign In",
                onPressed: controller.signIn,
              ),
              const SizedBox(height: 12),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3A3A3A),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ContinueWithGoogleButton(
                text: "Continue with Google",
                onPressed: () {},
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff757575),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.createAccount);
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff139F25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
