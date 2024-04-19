import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.width});
  VoidCallback onPressed;
  String title;
  double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        onPrimary: Colors.white,
        fixedSize: Size(width, 58.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.r),
        ),
      ),
      child: Text(
        title,
        style: AppStyles.labelTextStyle().copyWith(
            color: kButtonTextColor,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp),
      ),
    );
  }
}
