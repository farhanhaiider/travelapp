import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_styles.dart';
import '../screens/user_profiling/controller/profile_details_controller.dart';

class CustomProfileImagePicker extends StatefulWidget {
  const CustomProfileImagePicker({super.key});

  @override
  State<CustomProfileImagePicker> createState() =>
      _CustomProfileImagePickerState();
}

class _CustomProfileImagePickerState extends State<CustomProfileImagePicker> {
  ProfileDetailsController controller = Get.put(ProfileDetailsController());
  Future<void> _getImageFromCameraOrGallery(BuildContext context) async {
    final pickedFile = await showModalBottomSheet<File?>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(top: 20.h),
          child: Wrap(
            children: <Widget>[
              Center(
                child: Text(
                  'Choose your preference',
                  style: AppStyles.appBarHeadingTextStyle().copyWith(
                      fontSize: 20.sp,
                      color: kHeadingColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.camera,
                  color: kSecondaryColor,
                ),
                title: Text(
                  'Camera',
                  style: AppStyles.labelTextStyle().copyWith(
                      fontSize: 16.sp,
                      color: kHeadingColor,
                      fontWeight: FontWeight.w500),
                ),
                onTap: () async {
                  Navigator.pop(context);
                  controller.getImageCamera();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_library,
                  color: kSecondaryColor,
                ),
                title: Text(
                  'Gallery',
                  style: AppStyles.labelTextStyle().copyWith(
                      fontSize: 16.sp,
                      color: kHeadingColor,
                      fontWeight: FontWeight.w500),
                ),
                onTap: () async {
                  Navigator.pop(context);
                  controller.getImageGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Obx(
            () => Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kHintColor, width: 2),
                ),
                child: controller.imagePath.isEmpty
                    ? CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.transparent,
                        foregroundColor: kSecondaryColor,
                        backgroundImage: AssetImage(kAvatar))
                    : Obx(
                        () => CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.transparent,
                            foregroundColor: kSecondaryColor,
                            backgroundImage: FileImage(
                                File(controller.imagePath.toString()))),
                      )),
          ),
          GestureDetector(
            onTap: () async {
              _getImageFromCameraOrGallery(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kHeadingColor,
              ),
              padding: EdgeInsets.all(6),
              child: Icon(
                Icons.edit,
                color: kSecondaryColor,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
