import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/custom_widgets/custom_button_widget.dart';
import 'package:travel_buddy/views/custom_widgets/custom_textfield.dart';
import 'package:travel_buddy/views/screens/forgot_password/controller/forgot_password_controller.dart';

class ChangePasswordScreen extends GetView<ForgotPasswordController> {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKeySetNewPassword,
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
                      'Please enter new password to access your account',
                      style: AppStyles.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'New Password',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextField(
                      hint: 'Enter new password',
                      icon: Icons.remove_red_eye_outlined,
                      controller: controller.password,
                      isPassword: true,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Confirm New Password',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextField(
                      hint: 'Confirm new password',
                      icon: Icons.remove_red_eye_outlined,
                      controller: controller.confirmPassword,
                      isPassword: true,
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  CustomButtonWidget(
                      onPressed: () {
                        Get.offAllNamed(kLoginRoute);
                      },
                      title: 'Reset and Login',
                      width: 390.w),
                ]),
          ),
        ),
      ),
    );
  }
}
