import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/screens/chat/controller/chart_screen_controller.dart';

class CustomMessageTextfield extends StatefulWidget {
  const CustomMessageTextfield({super.key});

  @override
  State<CustomMessageTextfield> createState() => _CustomMessageTextfieldState();
}

class _CustomMessageTextfieldState extends State<CustomMessageTextfield> {
  ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    return Stack(
      children: [
        Obx(
          () => Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 0.75 * screenWidth,
                  height: 0.085 * screenHeight,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.02, right: screenWidth * 0.02),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    controller: controller.isContainerVisible.isTrue
                        ? null
                        : controller.message,
                    decoration: InputDecoration(
                      hintText: controller.isContainerVisible.isTrue
                          ? ""
                          : 'Ask me anything....',
                      hintStyle: AppStyles.labelTextStyle().copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: kHintColor),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    controller.isChating.value = true;
                    controller.isSend.value = true;
                    controller.isContainerVisible.value = true;
                    controller.message.text = '';
                    Timer(Duration(seconds: 10), () {
                      controller.isContainerVisible.value = false;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    radius: 25.r,
                    child: Icon(
                      Icons.send_outlined,
                      size: 0.04 * screenHeight,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => Visibility(
            visible: controller.isContainerVisible.isTrue,
            child: AnimatedContainer(
              height: 0.085 * screenHeight,
              width: 0.5 * screenWidth,
              margin: EdgeInsets.only(left: 0.145 * screenWidth),
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                border: Border.all(color: kHintColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(0.02 * screenWidth),
                child: Row(
                  children: [
                    Container(
                      width: 0.07 * screenWidth,
                      height: 0.07 * screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: kSecondaryColor,
                      ),
                    ),
                    SizedBox(width: 0.02 * screenWidth),
                    Text(
                      'Stop Generating...',
                      style: AppStyles.appBarHeadingTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
