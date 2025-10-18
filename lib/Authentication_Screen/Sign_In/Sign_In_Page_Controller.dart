import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../App_Routes/app_routes.dart';

class SignInController extends GetxController {
  /// Text controllers
  final TextEditingController emailPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /// Password visibility
  final RxBool isObscure = true.obs;

  @override
  void onClose() {
    emailPhoneController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  /// Toggle password visibility
  void toggleObscure() {
    isObscure.value = !isObscure.value;
  }

  /// Basic email
  bool _isValidEmail(String input) {
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return emailRegex.hasMatch(input);
  }

  /// Basic phone validation: digits only and length >= 8
  bool _isValidPhone(String input) {
    final phoneRegex = RegExp(r'^[0-9]+$');
    return phoneRegex.hasMatch(input) && input.length >= 8;
  }

  /// Main sign in logic
  void signIn() {
    final raw = emailPhoneController.text.trim();
    final password = passwordController.text;

    /// Validate presence
    if (raw.isEmpty) {
      Get.snackbar(
        "Missing Info",
        "Please enter your email or phone number.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (password.isEmpty) {
      Get.snackbar(
        "Missing Password",
        "Please enter your password.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    ///  email or phone and validate
    if (raw.contains('@')) {
      /// treat as email
      if (!_isValidEmail(raw)) {
        Get.snackbar(
          "Invalid Email",
          "Please enter a valid email address.",
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }
    } else {
      /// treat as phone
      if (!_isValidPhone(raw)) {
        Get.snackbar(
          "Invalid Phone",
          "Please enter a valid phone number (digits only).",
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }
    }

    Get.toNamed(AppRoutes.homePage);
  }
}
