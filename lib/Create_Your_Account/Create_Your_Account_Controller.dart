import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';

class CreateYourAccountController extends GetxController {
  int buttonIndex = 0;

  void setButtonIndex(int index) {
    buttonIndex = index;
    update();
  }

  // Text controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Agree checkbox as observable
  final agree = false.obs;

  // simple email regex
  final _emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  bool _isEmailValid(String email) => _emailRegex.hasMatch(email);

  void toggleAgree(bool? v) => agree.value = v ?? false;

  void createAccount() {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();
    final pass = passwordController.text;
    final confirm = confirmPasswordController.text;

    // Validations
    if (name.isEmpty) {
      _showError("Please enter your full name");
      return;
    }
    if (email.isEmpty) {
      _showError("Please enter your email address");
      return;
    }
    if (!_isEmailValid(email)) {
      _showError("Please enter a valid email address");
      return;
    }
    if (phone.isEmpty) {
      _showError("Please enter your phone number");
      return;
    }
    // optional: simple phone validation (adjust as needed per locale)
    if (phone.length < 8) {
      _showError("Please enter a valid phone number");
      return;
    }
    if (pass.isEmpty) {
      _showError("Please enter a password");
      return;
    }
    if (pass.length < 6) {
      _showError("Password must be at least 6 characters");
      return;
    }
    if (confirm.isEmpty) {
      _showError("Please confirm your password");
      return;
    }
    if (pass != confirm) {
      _showError("Passwords do not match");
      return;
    }
    if (!agree.value) {
      _showError("Please accept Terms and Privacy Policy");
      return;
    }

    // If all good — here you would normally call your API to create account.
    // For now we'll simulate success and navigate to HomePage.
    Get.snackbar(
      "Success",
      "Account created successfully",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.1),
    );

    Get.offAllNamed(AppRoutes.otpSignUp);
  }

  void _showError(String message) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.withOpacity(0.05),
    );
  }
}
