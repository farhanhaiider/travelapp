import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:country_picker/country_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_styles.dart';

class CustomTextfieldWithCountryPicker extends StatefulWidget {
  const CustomTextfieldWithCountryPicker({Key? key, required this.controller})
      : super(key: key);

  final TextEditingController controller;

  @override
  State<CustomTextfieldWithCountryPicker> createState() =>
      _CustomTextfieldWithCountryPickerState();
}

class _CustomTextfieldWithCountryPickerState
    extends State<CustomTextfieldWithCountryPicker> {
  Country? country;
  bool _isFocused = false;

  Future<String> fetchCountryCode() async {
    final response = await http.get(Uri.parse('http://ip-api.com/json'));
    final body = json.decode(response.body);
    final countryCode = body['countryCode'];
    return countryCode;
  }

  @override
  void initState() {
    super.initState();
    fetchCountryCode().then((countryCode) {
      setState(() {
        country = CountryParser.parseCountryCode(countryCode);
        // Set the initial hint based on the selected country
        widget.controller.text = "+${country?.phoneCode ?? ''}";
      });
    });
  }

  void showPicker() {
    showCountryPicker(
      context: context,
      favorite: ['IN', 'US', 'CA'],
      exclude: ['CN'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600.h,
        borderRadius: BorderRadius.circular(20),
        inputDecoration: const InputDecoration(
          prefixIcon: Icon(Icons.search, color: kHintColor),
          hintText: 'Search your country here..',
          border: InputBorder.none,
        ),
      ),
      onSelect: (country) {
        setState(() {
          this.country = country;
          // Update the hint when a new country is selected
          widget.controller.text = "+${country.phoneCode ?? ''}";
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return country == null
        ? const CircularProgressIndicator(color: kPrimaryColor)
        : TextFormField(
            controller: widget.controller,
            cursorColor: kSecondaryColor,
            keyboardType: TextInputType.number,
            style: AppStyles.labelTextStyle().copyWith(
              color: kInputTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              hintText: '+${country?.phoneCode} 123 4567 890',
              hintStyle: AppStyles.labelTextStyle().copyWith(
                color: kHintColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: showPicker,
                child: Container(
                  height: 56,
                  width: 20,
                  alignment: Alignment.center,
                  child: Text(
                    '${country!.flagEmoji} ',
                    style: AppStyles.labelTextStyle().copyWith(
                      fontSize: 20.sp,
                      color: kSubHeadingColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _isFocused = true;
                  });
                },
                child: Icon(
                  Icons.phone,
                  color: (_isFocused || widget.controller.text.isNotEmpty)
                      ? kSecondaryColor
                      : kHintColor,
                  size: 20,
                ),
              ),
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
          );
  }
}
