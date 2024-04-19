import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_buddy/utils/app_images.dart';

class ProfileDetailsController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldProfileDetails = GlobalKey<ScaffoldState>();
  TextEditingController name = TextEditingController(),
      phoneNumber = TextEditingController();

  RxString imagePath = "".obs;
  RxString gender =
      'Please select your gender                                '.obs;

  Future getImageGallery() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }

  Future getImageCamera() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
