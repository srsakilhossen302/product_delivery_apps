import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/Custom_design/Continue_with_Google_Button.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import '../../App_Routes/app_routes.dart';
import 'Reset_Password_Controller.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final controller = Get.put(ResetPasswordController());

  bool _isObscure = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff333333),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 110),
              Text(
                "Reset Password",
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
                  "Please set a new password to secure your account and regain access",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff757575),
                  ),
                ),
              ),
              const SizedBox(height: 36),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),

                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.name,
                    obscureText: _isObscure2,
                    decoration: InputDecoration(
                      labelText: "Create a password",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure2 ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure2 = !_isObscure2;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "Confirm New Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),

                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.confirmPasswordController,
                    keyboardType: TextInputType.name,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: "Re-enter your new password",
                      labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              CustomButttonDesign(
                text: "Save Changes",
                onPressed: () {
                  if (!controller.validatePassword()) return;
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                             Icons.check_circle_outline_outlined, weight: 59, color: Color(0xff139F25),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Password Changed!",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff139F25),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Your can now use your new password to login to",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff757575),
                            ),
                          ),

                          Text(" your account.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff757575),
                            ),
                          ),
                          SizedBox(height: 24),
                          CustomButttonDesign(
                            text: "Login",
                            onPressed: () {
                              Get.toNamed(AppRoutes.signinpage);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
