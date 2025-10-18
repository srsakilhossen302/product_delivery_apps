import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';
import '../Custom_design/Continue_with_Google_Button.dart';
import 'Create_Your_Account_Controller.dart';

class CreateYourAccount extends StatefulWidget {
  const CreateYourAccount({super.key});

  @override
  State<CreateYourAccount> createState() => _CreateYourAccountState();
}

class _CreateYourAccountState extends State<CreateYourAccount> {
  // Use GetX controller
  final CreateYourAccountController authController = Get.put(
    CreateYourAccountController(),
  );

  // local UI visibility toggles (keep here or move to controller)
  bool _isObscure = true;
  bool _isObscure2 = true;

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
              Text(
                "Create Your Account",
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
                  "Join us to explore top Canadian-made products, "
                  "exclusive deals, and great rewards",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff757575),
                  ),
                ),
              ),
              const SizedBox(height: 19),
              Text(
                "Select your role",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff757575),
                ),
              ),
              const SizedBox(height: 16),

              // role buttons (as before)...
              GetBuilder<CreateYourAccountController>(
                builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // User Button
                      SizedBox(
                        width: 141,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.buttonIndex == 0
                                ? const Color(0xff139F25)
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: const BorderSide(
                                color: Color(0xff139F25),
                                width: 1,
                              ),
                            ),
                          ),
                          onPressed: () {
                            controller.setButtonIndex(0);
                          },
                          child: Text(
                            "User",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: controller.buttonIndex == 0
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 20),

                      // Rider Button
                      SizedBox(
                        width: 141,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.buttonIndex == 1
                                ? const Color(0xff139F25)
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: const BorderSide(
                                color: Color(0xff139F25),
                                width: 1,
                              ),
                            ),
                          ),
                          onPressed: () {
                            controller.setButtonIndex(1);
                          },
                          child: Text(
                            "Rider",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: controller.buttonIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 23),

              // Form fields using controller
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Full Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: authController.nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Enter your full name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: authController.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Enter your email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    "Phone",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: authController.phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Enter your phone number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: authController.passwordController,
                    obscureText: _isObscure2,
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure2 ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () =>
                            setState(() => _isObscure2 = !_isObscure2),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),
                  const Text(
                    "Confirm Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: authController.confirmPasswordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () =>
                            setState(() => _isObscure = !_isObscure),
                      ),
                    ),
                  ),

                  const SizedBox(height: 19),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: authController.agree.value,
                          onChanged: (val) => authController.toggleAgree(val),
                        ),
                      ),
                      const Text(
                        "I agree to the",
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "and",
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Expanded(
                        child: Text(
                          "Privacy Policy.",
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 19),

                  // Use your custom button and call controller.createAccount()
                  CustomButttonDesign(
                    text: "Continue",
                    onPressed: () {
                      authController.createAccount();
                    },
                  ),

                  const SizedBox(height: 12),
                  const Align(alignment: Alignment.center, child: Text("Or")),
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
                          "Already have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff757575),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.signinpage);
                          },
                          child: const Text(
                            "Sign in",
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
            ],
          ),
        ),
      ),
    );
  }
}
