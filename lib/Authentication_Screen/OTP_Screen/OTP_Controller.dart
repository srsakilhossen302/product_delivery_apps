import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../App_Routes/app_routes.dart';

class OTPController extends GetxController {
  /// OTP 4 TextEditingController
  final List<TextEditingController> otpControllers =
  List.generate(4, (_) => TextEditingController());

  /// sob FocusNode
  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void onClose() {
    for (var c in otpControllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    super.onClose();
  }

  ///  OTP chek Logic
  void verifyOTP() {
    String otp = otpControllers.map((e) => e.text).join().trim();

    if (otp.isEmpty) {
      Get.snackbar(
        "Missing OTP",
        "Please enter the OTP code.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (otp.length < 4) {
      Get.snackbar(
        "Invalid OTP",
        "Please enter a valid 4-digit OTP.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    /// OTP is valid, navigate to reset password
    Get.toNamed(AppRoutes.resetPassword);
  }
}
