import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomeCheckBoxWidget extends StatelessWidget {
  final bool isChecked;
  final ValueChanged onChange;
  final String labelText;
  final bool isViewMode;
  final bool showCheckBoxWithLabel;

  CustomeCheckBoxWidget(
      {required this.isChecked,
      required this.onChange,
      required this.labelText,
      this.isViewMode = false,
      this.showCheckBoxWithLabel = false});

  @override
  Widget build(BuildContext context) {
    final screenWidth = Get.width;
    final screenHeight = Get.height;
    // TODO: implement build
    return showCheckBoxWithLabel
        ? Container(
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.0,
                  offset: Offset.fromDirection(-10.0),
                ),
              ],
            ),
            child: Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              elevation: 2,
              color: (isViewMode ? kSecondaryColor : kBackgroundColor),
              child: CheckboxListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 1.0, vertical: 1.0),
                  selectedTileColor: MaterialStateColor.resolveWith(
                      (states) => kSecondaryColor),
                  checkboxShape: ContinuousRectangleBorder(),
                  fillColor: MaterialStateColor.resolveWith((states) =>
                      isChecked ? kSecondaryColor : kBackgroundColor),
                  controlAffinity: ListTileControlAffinity.trailing,
                  side: const BorderSide(
                      width: 3, color: kSecondaryColor, strokeAlign: 0),
                  title: Text(labelText,
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor, fontWeight: FontWeight.w600)),
                  value: isChecked,
                  onChanged: onChange),
            ))
        : Container(
            width: Get.width * 0.36,
            child: ListTileTheme(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.all(0),
              child: CheckboxListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  visualDensity:
                      const VisualDensity(horizontal: 1.0, vertical: -4.0),
                  selectedTileColor: MaterialStateColor.resolveWith(
                      (states) => kSecondaryColor),
                  checkboxShape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  fillColor: MaterialStateColor.resolveWith((states) =>
                      isChecked ? kSecondaryColor : kBackgroundColor),
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  side: const BorderSide(
                    width: 2,
                    color: kSecondaryColor,
                    strokeAlign: 0,
                  ),
                  title: Text(labelText,
                      style: AppStyles.labelTextStyle().copyWith(
                          color: kHeadingColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600)),
                  value: isChecked,
                  onChanged: onChange),
            ));
  }
}
