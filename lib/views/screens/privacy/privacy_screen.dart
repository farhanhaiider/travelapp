import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_strings.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import 'package:travel_buddy/views/screens/privacy/controller/privacy_controller.dart';

class PrivacyScreen extends GetView<PrivacyController> {
  const PrivacyScreen({super.key});

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
                            'Privacy Policy',
                            style: AppStyles.appBarHeadingTextStyle()
                                .copyWith(fontSize: 22.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: Image.asset(
                      kPrivacyImage,
                      width: 200.w,
                      height: 200.w,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Heading 1',
                    style: AppStyles.appBarHeadingTextStyle()
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Enim magni ipsum nostrum culpa ipsum voluptatum occaecati aut fugit. Est mollitia asperiores ut pariatur voluptas magni laudantium labore exercit ationem. Ratione corporis recusandae perferendis consequatur nobis.',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Enim magni ipsum nostrum culpa ipsum voluptatum occaecati aut fugit. Est mollitia asperiores ut pariatur voluptas magni laudantium labore exercit ationem. Ratione corporis recusandae perferendis consequatur nobis.',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Enim magni ipsum nostrum culpa ipsum voluptatum occaecati aut fugit. Est mollitia asperiores ut pariatur voluptas magni laudantium labore exercit ationem. Ratione corporis recusandae perferendis consequatur nobis.',
                    style: AppStyles.labelTextStyle().copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: kParagraphTextColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 390.w,
                    height: screenHeight * 0.45,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25.r),
                      border: Border.all(
                        color: kPrimaryColor,
                        width: 2.w,
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(9),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'How Accounts Works?',
                                style: AppStyles.appBarHeadingTextStyle()
                                    .copyWith(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Enim magni ipsum nostrum culpa ipsum voluptatum occaecati aut fugit. Est mollitia asperiores ut pariatur voluptas magni laudantium labore exercit ationem. Ratione corporis recusandae perferendis consequatur nobis.',
                                style: AppStyles.labelTextStyle().copyWith(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: kParagraphTextColor),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'How Accounts Works?',
                                style: AppStyles.appBarHeadingTextStyle()
                                    .copyWith(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Enim magni ipsum nostrum culpa ipsum voluptatum occaecati aut fugit. Est mollitia asperiores ut pariatur voluptas magni laudantium labore exercit ationem. Ratione corporis recusandae perferendis consequatur nobis.',
                                style: AppStyles.labelTextStyle().copyWith(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: kParagraphTextColor),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'How Accounts Works?',
                                style: AppStyles.appBarHeadingTextStyle()
                                    .copyWith(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Enim magni ipsum nostrum culpa ipsum voluptatum occaecati aut fugit. Est mollitia asperiores ut pariatur voluptas magni laudantium labore exercit ationem. Ratione corporis recusandae perferendis consequatur nobis.',
                                style: AppStyles.labelTextStyle().copyWith(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: kParagraphTextColor),
                              ),
                            ])),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
