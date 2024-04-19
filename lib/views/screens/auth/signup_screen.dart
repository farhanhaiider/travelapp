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

class SignUpScreen extends GetView<AuthController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKeySignUp,
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
                  Stack(
                    children: [
                      Positioned(
                        left: -5,
                        child: CupertinoNavigationBarBackButton(
                          color: kBackButtonColor,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          kAppLogo,
                          width: 200.w,
                          height: 200.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Hello there',
                        style: AppStyles.appBarHeadingTextStyle()
                            .copyWith(fontSize: 22.sp),
                      ),
                      Image.asset(
                        kWave,
                        width: 25.w,
                        height: 25.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Please enter your email & password to create an account',
                      style: AppStyles.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Your email',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextField(
                      hint: 'Enter your email',
                      icon: Icons.email_outlined,
                      controller: controller.email,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Create password',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextField(
                      hint: 'Create your password',
                      icon: Icons.remove_red_eye_outlined,
                      controller: controller.password,
                      isPassword: true,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: Get.width * 0.6,
                    child: Row(
                      children: [
                        Obx(
                          () => CustomeCheckBoxWidget(
                            isChecked: controller.isAccept.value,
                            onChange: controller.onAcceptChanged,
                            labelText: "I agree to the",
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () {
                            Get.toNamed(kPrivacyRoute);
                          },
                          child: Text(
                            'Privacy Policy',
                            style: AppStyles.labelTextStyle().copyWith(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: kSecondaryColor),
                          ),
                        ),

                        // Text('I accept to the ',
                        //     style: AppStyles.labelTextStyle().copyWith(
                        //         color: kHeadingColor,
                        //         fontWeight: FontWeight.w600)),
                        // Text('Privacy Policy',
                        //     style: AppStyles.labelTextStyle().copyWith(
                        //         color: kSecondaryColor,
                        //         fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomButtonWidget(
                      onPressed: () {
                        Get.toNamed(kProfileDetailRoute);
                      },
                      title: 'Register',
                      width: 390.w),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
