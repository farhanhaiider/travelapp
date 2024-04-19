import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/custom_widgets/custom_button_widget.dart';
import 'package:travel_buddy/views/screens/home/controller/home_screen_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

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
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: AppStyles.appBarHeadingTextStyle().copyWith(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor),
                ),
                Text(
                  'TravelBuddy',
                  style: AppStyles.appBarHeadingTextStyle().copyWith(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor),
                ),
                SizedBox(
                  height: screenHeight * 0.14,
                ),
                Flexible(
                  flex: 2,
                  child: Image.asset(
                    kHomeLogo,
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.3,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.14,
                ),
                CustomButtonWidget(
                  onPressed: () {
                    Get.toNamed(kChatRoute);
                  },
                  title: 'Start Chat',
                  width: screenWidth * 0.8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
