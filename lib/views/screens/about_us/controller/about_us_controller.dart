import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_buddy/models/contact_us_model.dart';
import 'package:travel_buddy/utils/app_colors.dart';
import 'package:travel_buddy/utils/app_images.dart';

class AboutUsController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<ContactUsListModel> contactUsList = [
    ContactUsListModel(
      'info@mytravelbuddy.online',
      kEmailIcon,
      kSubHeadingColor,
      kBackgroundColor,
    ),
    ContactUsListModel(
      '0364556260',
      kWhatsappIcon,
      kWhatsappAboutUsBackground,
      kWhatsappAboutUsBackground.withOpacity(0.15),
    ),
    ContactUsListModel(
      '/Leonardo Hotels',
      kFacebookIcon,
      kFacebookAboutUsBackground,
      kFacebookAboutUsBackground.withOpacity(0.15),
    ),
    ContactUsListModel(
      '/Leonardo Hotels',
      kInstagramIcon,
      KInstgramBorderColor,
      kInstagramAboutUsBackground.withOpacity(0.15),
    ),
  ];
}
