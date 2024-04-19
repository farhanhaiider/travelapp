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

import '../../../utils/common_code.dart';
import 'controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoNavigationBarBackButton(
                        color: kBackButtonColor,
                        onPressed: () {},
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(kAboutUsRoute);
                        },
                        child: Icon(
                          CupertinoIcons.info_circle,
                          size: ScreenUtil().setSp(30),
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.018,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        'Welcome back',
                        style: AppStyles.appBarHeadingTextStyle().copyWith(
                          fontSize: 22.sp,
                        ),
                      ),
                      Image.asset(
                        kWave,
                        width: 25.w,
                        height: 25.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.018,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Text(
                      'Please enter your email & password to sign in',
                      style: AppStyles.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.06,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Text(
                      'Email',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: CustomTextField(
                      hint: 'Enter Email',
                      icon: Icons.email_outlined,
                      controller: controller.email,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Text(
                      'Password',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: CustomTextField(
                      hint: 'Enter Password',
                      icon: Icons.remove_red_eye_outlined,
                      controller: controller.password,
                      isPassword: true,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => CustomeCheckBoxWidget(
                          isChecked: controller.isRememberMe.value,
                          onChange: controller.onRememberMeChanged,
                          labelText: 'Remember me',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  CustomButtonWidget(
                      onPressed: () {
                        Get.toNamed(kHomeRoute);
                      },
                      title: 'Sign In',
                      width: screenWidth * 0.9),
                  SizedBox(
                    height: screenHeight * 0.018,
                  ),
                  Center(
                    child: TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero)),
                      onPressed: () {
                        Get.toNamed(kForgotPasswordRoute);
                      },
                      child: Text(
                        'Forgot Password?',
                        style: AppStyles.labelTextStyle().copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: kHeadingColor),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: AppStyles.labelTextStyle().copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: kHeadingColor),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero)),
                          onPressed: () {
                            Get.toNamed(kSignUpRoute);
                          },
                          child: Text(
                            'Sign up',
                            style: AppStyles.labelTextStyle().copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: kDividerColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.02),
                        child: Text(
                          'or continue with',
                          style: AppStyles.labelTextStyle().copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: kSubHeadingColor),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: kDividerColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenWidth * 0.26,
                        height: screenHeight * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            color: kDividerColor,
                            width: 2,
                          ),
                        ),
                        child: Center(
                            child: Image.asset(
                          kGoogleIcon,
                          width: 30.w,
                          height: 30.h,
                        )),
                      ),
                      Container(
                        width: screenWidth * 0.26,
                        height: screenHeight * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            color: kDividerColor,
                            width: 2,
                          ),
                        ),
                        child: Center(
                            child: Image.asset(
                          kFacebookIcon,
                          width: 30.w,
                          height: 30.h,
                        )),
                      ),
                      Container(
                        width: screenWidth * 0.26,
                        height: screenHeight * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            color: kDividerColor,
                            width: 2,
                          ),
                        ),
                        child: Center(
                            child: Image.asset(
                          kAppleIcon,
                          width: 30.w,
                          height: 30.h,
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
