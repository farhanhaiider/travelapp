import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> scaffoldKeySignUp = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> scaffoSldKeyForgotPassword =
      GlobalKey<ScaffoldState>();
  TabController? tabController;
  TextEditingController tecFullName = TextEditingController(),
      email = TextEditingController(),
      password = TextEditingController();
  FocusNode fnFullName = FocusNode(),
      fnEmail = FocusNode(),
      fnPassword = FocusNode();
  RxBool isRememberMe = false.obs;
  RxBool isAccept = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onRememberMeChanged(value) {
    print('==========value $value');
    if (value != null) {
      isRememberMe.value = value;
    }
  }

  void onAcceptChanged(value) {
    print('==========value $value');
    if (value != null) {
      isAccept.value = value;
    }
  }
}
