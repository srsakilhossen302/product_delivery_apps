import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../App_Routes/app_routes.dart';
import '../../Custom_design/Custom_Buttton_Design.dart';
import 'otp_controller.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late final OTPController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(OTPController());
  }

  @override
  void dispose() {
    Get.delete<OTPController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Verify OTP",
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
                  "Enter the 4-digit code sent to your phone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff757575),
                  ),
                ),
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    width: 58,
                    height: 58,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      controller: controller.otpControllers[index],
                      focusNode: controller.focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && index < 3) {
                          controller.focusNodes[index + 1].requestFocus();
                        } else if (value.isEmpty && index > 0) {
                          controller.focusNodes[index - 1].requestFocus();
                        }
                      },
                    ),
                  );
                }),
              ),
              const SizedBox(height: 28),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "A code has been sent to your phone number",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Resend in 00:57",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff139F25),
                    ),
                  ),
                  const SizedBox(height: 24),
                  CustomButttonDesign(
                    text: "Verify",
                    onPressed: () {
                      controller.verifyOTP(); /// Call the verifyOTP method
                    },
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
