import 'package:get/get.dart';
import 'package:travel_buddy/views/screens/about_us/controller/about_us_controller.dart';
import 'package:travel_buddy/views/screens/auth/controller/auth_controller.dart';
import 'package:travel_buddy/views/screens/chat/controller/chart_screen_controller.dart';
import 'package:travel_buddy/views/screens/forgot_password/controller/forgot_password_controller.dart';
import 'package:travel_buddy/views/screens/home/controller/home_screen_controller.dart';
import 'package:travel_buddy/views/screens/privacy/controller/privacy_controller.dart';
import 'package:travel_buddy/views/screens/user_profiling/controller/profile_details_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => ForgotPasswordController());
    Get.lazyPut(() => ProfileDetailsController());
    Get.lazyPut(() => PrivacyController());
    Get.lazyPut(() => AboutUsController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ChatController());
  }
}
