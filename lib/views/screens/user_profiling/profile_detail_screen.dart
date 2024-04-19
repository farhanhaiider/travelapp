import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/custom_widgets/custom_button_widget.dart';
import 'package:country_picker/country_picker.dart';
import 'package:travel_buddy/views/custom_widgets/custom_profile_image_picker.dart';
import 'package:travel_buddy/views/custom_widgets/custom_textfield.dart';
import 'package:travel_buddy/views/custom_widgets/custom_textfield_with_countryPicker.dart';
import 'package:travel_buddy/views/screens/user_profiling/controller/profile_details_controller.dart';

class ProfileDetailsScreen extends GetView<ProfileDetailsController> {
  ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldProfileDetails,
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
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Complete your profile',
                      style: AppStyles.appBarHeadingTextStyle()
                          .copyWith(fontSize: 22.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Please enter your details to complete your profile, Don’t worry your details are private.',
                      style: AppStyles.labelTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomProfileImagePicker(),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Full Name',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextField(
                      hint: 'Enter full name',
                      controller: controller.name,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Phone Number',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CustomTextfieldWithCountryPicker(
                      controller: controller.phoneNumber,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Gender',
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Container(
                        width: 390.w,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: kSecondaryColor, width: 1.w),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: DropdownButton<String>(
                                dropdownColor: kBackgroundColor,
                                value: controller.gender.value,
                                iconDisabledColor: kHintColor,
                                iconEnabledColor: kSecondaryColor,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                ),
                                underline: Container(
                                  width: 0,
                                  height: 0,
                                ),
                                onChanged: (String? value) {
                                  controller.gender.value = value!;
                                },
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      'Please select your gender                                ',
                                      style:
                                          AppStyles.labelTextStyle().copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: kHintColor,
                                      ),
                                    ),
                                    value:
                                        'Please select your gender                                ',
                                  ),
                                  DropdownMenuItem(
                                    child: Text(
                                      'Male',
                                      style:
                                          AppStyles.labelTextStyle().copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: kHeadingColor,
                                      ),
                                    ),
                                    value: 'Male',
                                  ),
                                  DropdownMenuItem(
                                    child: Text(
                                      'Female',
                                      style:
                                          AppStyles.labelTextStyle().copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: kHeadingColor,
                                      ),
                                    ),
                                    value: 'Female',
                                  ),
                                  DropdownMenuItem(
                                    child: Text(
                                      'Prefer not to say',
                                      style:
                                          AppStyles.labelTextStyle().copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: kHeadingColor,
                                      ),
                                    ),
                                    value: 'Prefer not to say',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 58.h,
                          width: 182.w,
                          child: OutlinedButton(
                            onPressed: () {
                              Get.toNamed(kHomeRoute);
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.resolveWith<
                                  OutlinedBorder>((_) {
                                return RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.r),
                                );
                              }),
                              side:
                                  MaterialStateProperty.resolveWith<BorderSide>(
                                      (_) {
                                return BorderSide(
                                  color: kSubHeadingColor,
                                  width: 2,
                                );
                              }),
                            ),
                            child: Text(
                              'Skip',
                              style: AppStyles.labelTextStyle().copyWith(
                                  color: kSubHeadingColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                        CustomButtonWidget(
                            onPressed: () {
                              Get.toNamed(kHomeRoute);
                            },
                            title: 'Continue',
                            width: 182.w),
                      ],
                    ),
                  ),
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
