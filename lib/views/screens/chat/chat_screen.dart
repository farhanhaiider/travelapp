import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/custom_widgets/custom_chat_container.dart';
import 'package:travel_buddy/views/custom_widgets/custom_message_textfield.dart';
import 'package:travel_buddy/views/custom_widgets/custom_share_modal.dart';
import 'package:travel_buddy/views/screens/chat/controller/chart_screen_controller.dart';

class ChatScreen extends GetView<ChatController> {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    return Obx(
      () => Scaffold(
        key: controller.scaffoldKey,
        appBar: controller.isChating.isTrue
            ? AppBar(
                title: Center(
                  child: Text(
                    'Travel Buddy',
                    style: AppStyles.appBarHeadingTextStyle()
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 24.sp),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(1.0),
                  child: Container(
                    color: Colors.grey,
                    height: 1.0,
                  ),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: [
              Obx(
                () => controller.isChating.isFalse
                    ? Column(
                        children: [
                          SizedBox(
                            height: 0.06 * screenHeight,
                          ),
                          Image.asset(
                            kChatScreenLogo,
                            width: 0.6 * screenWidth,
                            height: 0.31 * screenHeight,
                          ),
                          SizedBox(
                            height: 0.045 * screenHeight,
                          ),
                          Container(
                            width: 0.85 * screenWidth,
                            height: 0.13 * screenHeight,
                            decoration: BoxDecoration(
                              color: kChatContainerColor,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: Center(
                              child: Text(
                                'Meet TravelBuddy. Your local travel guide. Speaks any language and knows everything about Amsterdam.',
                                textAlign: TextAlign.center,
                                style: AppStyles.labelTextStyle().copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: kHeadingColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.02 * screenHeight,
                          ),
                          Container(
                            width: 0.85 * screenWidth,
                            height: 0.06 * screenHeight,
                            decoration: BoxDecoration(
                              color: kChatContainerColor,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: Center(
                              child: Text(
                                'Sponsored by Leonardo Hotels.',
                                textAlign: TextAlign.center,
                                style: AppStyles.labelTextStyle().copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: kHeadingColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.015 * screenHeight,
                          ),
                          Container(
                            width: 0.85 * screenWidth,
                            height: 0.085 * screenHeight,
                            decoration: BoxDecoration(
                              color: kChatContainerColor,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: Center(
                              child: Text(
                                'Can you find me taxi to the airport at 7:00 AM?',
                                textAlign: TextAlign.center,
                                style: AppStyles.labelTextStyle().copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: kHeadingColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.006 * screenHeight,
                          ),
                          Text(
                            "This is an example of what I can do for you.",
                            textAlign: TextAlign.center,
                            style: AppStyles.labelTextStyle().copyWith(
                              color: kSubHeadingColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 0.088 * screenHeight,
                          ),
                          CustomMessageTextfield(),
                          SizedBox(
                            height: 0.02 * screenHeight,
                          ),
                        ],
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.03,
                            right: screenWidth * 0.03),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0.02 * screenHeight,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: CustomChatContainer(
                                color: kSecondaryColor,
                                height: screenHeight * 0.09,
                                message: "Hi there",
                                isRight: true,
                              ),
                            ),
                            SizedBox(
                              height: 0.02 * screenHeight,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: CustomChatContainer(
                                    color: kChatContainerColor,
                                    height: screenHeight * 0.12,
                                    message:
                                        "Hi there! How may I assist you today?",
                                    isRight: false,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.file_copy_outlined,
                                      size: screenWidth * 0.05,
                                      color: kSubHeadingColor,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return ShareModal();
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.share,
                                        size: screenWidth * 0.05,
                                        color: kSubHeadingColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenWidth * 0.02,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: CustomChatContainer(
                                color: kSecondaryColor,
                                height: screenWidth * 0.26,
                                message:
                                    "We would like to have dinner tonight at 7:00 PM in an upmarket Chinese restaurant. Can you propose some possibilities?",
                                isRight: true,
                              ),
                            ),
                            SizedBox(
                              height: screenWidth * 0.02,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: CustomChatContainer(
                                    color: kChatContainerColor,
                                    height: screenWidth * 0.65,
                                    message:
                                        "1. Sea Palace: Known as Europe's largest floating restaurant, Sea Palace offers an authentic Chinese dining experience with an extensive menu featuring Cantonese cuisine, Dim Sum, Beijing Duck, and Sichuan dishes. They are open daily until 22:00, with the kitchen closing at 21:15. For more information or to make a reservation, visit their website at Sea Palace​​. 2.",
                                    isRight: false,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.file_copy_outlined,
                                        size: screenWidth * 0.05,
                                        color: kSubHeadingColor,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return ShareModal();
                                            },
                                          );
                                        },
                                        child: Icon(
                                          Icons.share,
                                          size: screenWidth * 0.05,
                                          color: kSubHeadingColor,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 0.02 * screenHeight,
                            ),
                            CustomMessageTextfield(),
                            SizedBox(
                              height: 0.02 * screenHeight,
                            ),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
