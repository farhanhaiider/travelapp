import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.isPassword,
    this.icon,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  final IconData? icon;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword,
      style: AppStyles.labelTextStyle().copyWith(
        color: kInputTextColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: AppStyles.labelTextStyle().copyWith(
          color: kHintColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: widget.icon != null
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _isFocused = true;
                  });
                },
                child: Icon(
                  widget.icon,
                  color: (_isFocused || widget.controller.text.isNotEmpty)
                      ? kSecondaryColor
                      : kHintColor,
                  size: 20,
                ),
              )
            : null,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kSecondaryColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kSecondaryColor),
        ),
      ),
      onChanged: (value) {
        setState(() {});
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onSubmitted: (value) {
        setState(() {});
      },
    );
  }
}
