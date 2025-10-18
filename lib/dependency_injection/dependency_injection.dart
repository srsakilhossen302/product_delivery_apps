import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Authentication_Screen/Forgot_Password/Forgot_Password_Controller.dart';
import '../Authentication_Screen/OTP_Screen/OTP_Controller.dart';
import '../Authentication_Screen/Reset_Password/Reset_Password_Controller.dart';
import '../Authentication_Screen/Sign_In/Sign_In_Page_Controller.dart';
import '../Create_Your_Account/Create_Your_Account_Controller.dart';
import '../Home_Page_Screen/Home_Page_Screen_Controller.dart';
import '../Onboarding_Screen/Onboarding_Screen1_Controller.dart';
import '../Splash_Screen/Splash_Screen_Controller.dart';

class DependencyInjection {
  static void init() {
    Get.put(SplashController(), permanent:true);
    Get.put(OnboardingScreen1Controller(), permanent:true);
    Get.put(CreateYourAccountController(), permanent:true);
    Get.put(ForgotPasswordController(), permanent:true);
    Get.put(OTPController(), permanent:true);
    Get.put(ResetPasswordController(), permanent:true);
    Get.put(SignInController(), permanent:true);
    Get.put(HomePageScreenController(), permanent:true);

  }
}