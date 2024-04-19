import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/custom_widgets/custom_button_widget.dart';
import 'package:travel_buddy/views/custom_widgets/custom_checkbox_widget.dart';
import 'package:travel_buddy/views/custom_widgets/custom_textfield.dart';
import 'package:travel_buddy/views/screens/forgot_password/controller/forgot_password_controller.dart';

import '../../../utils/common_code.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKeyForgotPassword,
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  CupertinoNavigationBarBackButton(
                    color: kBackButtonColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Forgot Password',
                        style: AppStyles.appBarHeadingTextStyle()
                            .copyWith(fontSize: 22.sp),
                      ),
                      Image.asset(
                        kLock,
                        width: 25.w,
                        height: 25.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Please enter the email associated with your account',
                      style: AppStyles.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Email',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextField(
                      hint: 'Enter Email',
                      icon: Icons.email_outlined,
                      controller: controller.email,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  CustomButtonWidget(
                      onPressed: () {
                        Get.toNamed(kOTPverificationRoute);
                      },
                      title: 'Get Code',
                      width: 390.w),
                ]),
          ),
        ),
      ),
    );
  }
}
