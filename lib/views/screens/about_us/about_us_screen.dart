import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/models/contact_us_model.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/screens/about_us/controller/about_us_controller.dart';
import 'package:travel_buddy/views/screens/privacy/controller/privacy_controller.dart';

class AboutUsScreen extends GetView<AboutUsController> {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
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
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Center(
                          child: Text(
                            'About Us',
                            style: AppStyles.appBarHeadingTextStyle()
                                .copyWith(fontSize: 22.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: Image.asset(
                      kAboutUsImage,
                      width: 250.w,
                      height: 250.w,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Why TravelBuddy?',
                    style: AppStyles.appBarHeadingTextStyle()
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'TravelBuddy is a cutting-edge tool designed to enhance your travel experience by providing instant, personalized travel advice.',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Whether you’re looking for the best local cuisine, unique attractions, or efficient travel routes, this travel assistant offers up-to-date information tailored to your preferences. ',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Its ability to understand and adapt to individual needs makes planning easier and travel more enjoyable. With TravelBuddy, you can navigate new destinations like a local, save time on research, and make informed decisions, ensuring a smoother, more memorable journey.',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Whether you speak Spanish, German, Chinese or any other language; TravelBuddy will help you in your preferred language.',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Stack(
                    children: [
                      Text(
                        'Contact Us',
                        style: AppStyles.appBarHeadingTextStyle().copyWith(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.contactUsList.length,
                        itemBuilder: (context, index) {
                          ContactUsListModel item =
                              controller.contactUsList[index];
                          return Container(
                            width: 390.w,
                            height: 66.h,
                            margin: EdgeInsets.only(bottom: 20.h),
                            decoration: BoxDecoration(
                              color: item.backgroundColor,
                              borderRadius: BorderRadius.circular(17.r),
                              border: Border.all(
                                color: item.borderColor,
                                width: 2.w,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    item.image,
                                    width: 45.w,
                                    height: 45.w,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: kHeadingColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  // Container(
                  //   width: 390.w,
                  //   height: 66.h,
                  //   decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //       begin: Alignment.topRight,
                  //       end: Alignment.bottomRight,
                  //       colors: [
                  //         Color(0xFFFFC107),
                  //         Color(0xFFF44336),
                  //         Color(0xFF9C27B0),
                  //       ],
                  //     ),
                  //     borderRadius: BorderRadius.circular(17.r),
                  //   ),
                  //   child: Container(
                  //     margin: const EdgeInsets.all(2.0),
                  //     decoration: BoxDecoration(
                  //       gradient: LinearGradient(
                  //         begin: Alignment.topRight,
                  //         end: Alignment.bottomRight,
                  //         colors: [
                  //           Color.fromRGBO(156, 39, 176, 0.3),
                  //           Color.fromRGBO(244, 67, 54, 0.3),
                  //           Color.fromRGBO(255, 193, 7, 0.3),
                  //         ],
                  //       ),
                  //       borderRadius: BorderRadius.circular(8.0),
                  //     ),
                  //     child: Padding(
                  //       padding: EdgeInsets.only(left: 15.w),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           Image.asset(
                  //             kInstagramIcon,
                  //             width: 45.w,
                  //             height: 45.w,
                  //           ),
                  //           SizedBox(width: 10.w),
                  //           Text(
                  //             '/Leonards Hotels',
                  //             style: TextStyle(
                  //               fontSize: 14.sp,
                  //               fontWeight: FontWeight.w500,
                  //               color: kParagraphTextColor,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ]),
          ),
        ),
      ),
    );
  }
}
