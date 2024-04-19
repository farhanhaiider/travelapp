import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_styles.dart';

class CustomChatContainer extends StatelessWidget {
  CustomChatContainer(
      {super.key,
      required this.height,
      required this.color,
      required this.message,
      required this.isRight});
  double height;
  Color color;
  String message;
  bool isRight;

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    return Container(
      height: height,
      width: 315.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19.r),
          topRight: Radius.circular(19.r),
          bottomLeft: isRight ? Radius.circular(19.r) : Radius.circular(0),
          bottomRight: isRight ? Radius.circular(0) : Radius.circular(19.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.03 * screenWidth,
            right: 0.03 * screenWidth,
            top: screenHeight * 0.02),
        child: Text(
          message,
          textAlign: TextAlign.justify,
          style: isRight
              ? AppStyles.labelTextStyle().copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400)
              : AppStyles.labelTextStyle().copyWith(
                  color: kHeadingColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
