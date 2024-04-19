// import 'package:challenger_outdoor/utils/screen_bindings.dart';
// import 'package:challenger_outdoor/views/screens/auth/login_screen.dart';
// import 'package:challenger_outdoor/views/screens/auth/signup_Screen.dart';
// import 'package:challenger_outdoor/views/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/screen_bindings.dart';
import 'package:travel_buddy/views/screens/about_us/about_us_screen.dart';
import 'package:travel_buddy/views/screens/auth/login_screen.dart';
import 'package:travel_buddy/views/screens/auth/signup_screen.dart';
import 'package:travel_buddy/views/screens/chat/chat_screen.dart';
import 'package:travel_buddy/views/screens/forgot_password/change_password_screen.dart';
import 'package:travel_buddy/views/screens/forgot_password/forgot_password_screen.dart';
import 'package:travel_buddy/views/screens/forgot_password/otp_verification_screen.dart';
import 'package:travel_buddy/views/screens/home/home_screen.dart';
import 'package:travel_buddy/views/screens/privacy/privacy_screen.dart';
import 'package:travel_buddy/views/screens/user_profiling/profile_detail_screen.dart';

// import '../views/splash_screen.dart';
import 'app_strings.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kLoginRoute,
          page: () => LoginScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSignUpRoute,
          page: () => SignUpScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kForgotPasswordRoute,
          page: () => ForgotPasswordScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kOTPverificationRoute,
          page: () => OtpVerificationScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSetPasswordRoute,
          page: () => ChangePasswordScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kProfileDetailRoute,
          page: () => ProfileDetailsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kPrivacyRoute,
          page: () => PrivacyScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kAboutUsRoute,
          page: () => AboutUsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kHomeRoute,
          page: () => HomeScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kChatRoute,
          page: () => ChatScreen(),
          binding: ScreenBindings()),
    ];
  }
}
