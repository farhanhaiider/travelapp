import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/custom_widgets/custom_button_widget.dart';
import 'package:travel_buddy/views/screens/forgot_password/controller/forgot_password_controller.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/common_code.dart';

class OtpVerificationScreen extends GetView<ForgotPasswordController> {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    final defaultPinTheme = PinTheme(
      width: 67.w,
      height: 67.h,
      textStyle: AppStyles.appBarHeadingTextStyle().copyWith(
          fontSize: 36.sp, color: kPrimaryColor, fontWeight: FontWeight.w500),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: kSecondaryColor, width: 2),
      ),
    );
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKeyOtpVerificationCode,
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
                        'OTP Verification',
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
                      'Please enter the One Time Pin (OTP) sent to the email',
                      style: AppStyles.labelTextStyle(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          controller.email.text,
                          style: AppStyles.labelTextStyle().copyWith(
                              fontWeight: FontWeight.w600,
                              color: kHeadingColor),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                        onPressed: () {
                          Get.toNamed(kForgotPasswordRoute);
                        },
                        child: Stack(
                          children: [
                            Text(
                              'Change',
                              style: AppStyles.labelTextStyle().copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kPrimaryColor,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                margin: EdgeInsets.only(top: 3.0),
                                height: 2.0,
                                color: kPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: kSecondaryColor),
                        ),
                      ),
                      onCompleted: (pin) =>
                          {controller.verificationCode.text = pin},
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Didn’t receive the OTP? ',
                          style: AppStyles.labelTextStyle().copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kSubHeadingColor),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () {
                            // Get.toNamed(kSignUpRoute);
                          },
                          child: Text(
                            'Resend OTP',
                            style: AppStyles.labelTextStyle().copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomButtonWidget(
                      onPressed: () {
                        Get.toNamed(kSetPasswordRoute);
                      },
                      title: 'Verify',
                      width: 390.w),
                ]),
          ),
        ),
      ),
    );
  }
}
