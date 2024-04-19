import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle labelTextStyle() => GoogleFonts.inter(
      fontSize: 14.sp, fontWeight: FontWeight.w500, color: kSubHeadingColor);
  static TextStyle appBarHeadingTextStyle() => GoogleFonts.inter(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: kHeadingColor);
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2.0,
            offset: Offset.fromDirection(-10.0),
          ),
        ],
      );
  static BorderRadius get customBorderTL40 => BorderRadius.only(
        topLeft: Radius.circular(40.h),
        bottomRight: Radius.circular(35.h),
      );
  static BorderRadius get customBorderAll16 => BorderRadius.all(
        Radius.circular(16.h),
      );
  static BorderRadius get customBorderAll8 => BorderRadius.all(
        Radius.circular(8.h),
      );

  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
        backgroundColor: kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.w),
        ),
      );
  static ButtonStyle get fillOrangeBg => ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.w),
        ),
      );
  static ButtonStyle get fillWhite => ElevatedButton.styleFrom(
        backgroundColor: kBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.w),
        ),
      );
}
