import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool validatePassword() {
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please fill in both password fields",
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white);
      return false;
    }

    if (password.length < 6) {
      Get.snackbar("Weak Password", "Password must be at least 6 characters",
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white);
      return false;
    }

    if (password != confirmPassword) {
      Get.snackbar("Mismatch", "Passwords do not match",
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white);
      return false;
    }

    return true;
  }

  @override
  void onClose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
