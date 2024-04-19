import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKeyForgotPassword =
      GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> scaffoldKeyOtpVerificationCode =
      GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> scaffoldKeySetNewPassword =
      GlobalKey<ScaffoldState>();
  TextEditingController email = TextEditingController(),
      password = TextEditingController(),
      confirmPassword = TextEditingController(),
      verificationCode = TextEditingController();

  // RxBool isRememberMe = false.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // void onRememberMeChanged(value) {
  //   print('==========value $value');
  //   if (value != null) {
  //     isRememberMe.value = value;
  //   }
  // }
}
