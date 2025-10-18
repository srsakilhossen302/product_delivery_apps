import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../App_Routes/app_routes.dart';

class ForgotPasswordController extends GetxController{
  final TextEditingController PhoneController = TextEditingController();

  @override
  void onClose() {
    PhoneController.dispose();
    super.onClose();
  }

  bool _isValidPhone(String input) {
    final phoneRegex = RegExp(r'^[0-9]+$');
    return phoneRegex.hasMatch(input) && input.length >= 8;
  }

  void signIn() {
    final raw = PhoneController.text.trim();
    print("Phone Number: $raw"); /// Add this line for debugging

    if (raw.isEmpty) {
      Get.snackbar(
        "Missing Info",
        "Please enter your email or phone number.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (!_isValidPhone(raw)) {
      Get.snackbar(
        "Invalid Phone",
        "Please enter a valid phone number.",
        snackPosition: SnackPosition.BOTTOM,
      );
        return;
    }
    Get.toNamed(AppRoutes.otpScreen);

  }

}