import 'package:get/get.dart';
import 'package:product_delivery_apps/Onboarding_Screen/Onboarding_Screen2.dart';
import '../Authentication_Screen/Forgot_Password/Forgot_Password.dart';
import '../Authentication_Screen/OTP_Screen/OTP_Screen.dart';
import '../Authentication_Screen/Reset_Password/Reset_Password.dart';
import '../Authentication_Screen/Sign_In/Sign_In_Page.dart';
import '../Create_Your_Account/Create_Your_Account.dart';
import '../Create_Your_Account/OTP_Sign_Up.dart';
import '../Details_Page/Details_Page1.dart';
import '../Details_Page/Details_Page2.dart';
import '../Details_Page/Details_Page3.dart';
import '../Details_Page/Details_Page4.dart';
import '../Details_Page/Details_Page5.dart';
import '../Details_Page/Fukk_Screen_Sheet2.dart';
import '../Home_Page_Screen/Home_Page_Screen.dart';
import '../Onboarding_Screen/Onboarding_Screen1.dart';
import '../Onboarding_Screen/Onboarding_Screen3.dart';
import '../Onboarding_Screen/Slide_Screen.dart';
import '../Splash_Screen/Splash_Screen.dart';

class AppRoutes {
  static const splash = "/splash";
  static const onboarding = "/onboarding";
  static const slide = "/slide";
  static const onBoarding1 = "/onBoarding1";
  static const onBoarding2 = "/onBoarding2";
  static const onBoarding3 = "/onBoarding3";
  static const signinpage = "/signinpage";
  static const forgotpassword = "/forgotpassword";
  static const otpScreen = "/otpScreen";
  static const resetPassword = "/resetPassword";
  static const createAccount = "/createAccount";
  static const otpSignUp = "/otpSignUp";
  static const homePage = "/homePage";
  static const detailsPage1 = "/detailsPage1";
  static const detailsPage2 = "/detailsPage2";
  static const detailsPage3 = "/detailsPage3";
  static const detailsPage4 = "/detailsPage4";
  static const detailsPage5 = "/detailsPage5";
  static const fukkScreenSheet2 = "/fukkScreenSheet2";



  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: onboarding, page: () => OnboardingScreen1()),
    GetPage(name: slide, page: () => SlideScreen()),
    GetPage(name: onBoarding1, page: () => OnboardingScreen1()),
    GetPage(name: onBoarding2, page: () => OnboardingScreen2()),
    GetPage(name: onBoarding3, page: () => OnboardingScreen3()),
    GetPage(name: signinpage, page: () => SignInPage()),
    GetPage(name: forgotpassword, page: () => ForgotPassword()),
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: resetPassword, page: () => ResetPassword()),
    GetPage(name: createAccount, page: () => CreateYourAccount()),
    GetPage(name: otpSignUp, page: () => OtpSignUp()),
    GetPage(name: homePage, page: () => HomePageScreen()),
    GetPage(name: detailsPage1, page: () => DetailsPage1()),
    GetPage(name: detailsPage2, page: () => DetailsPage2()),
    GetPage(name: detailsPage3, page: () => DetailsPage3()),
    GetPage(name: detailsPage4, page: () => DetailsPage4()),
    GetPage(name: detailsPage5, page: () => DetailsPage5()),
    GetPage(name: fukkScreenSheet2, page: () => FukkScreenSheet2()),
  ];
}