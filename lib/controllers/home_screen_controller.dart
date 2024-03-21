import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/images_strings.dart';

class HomeScreenController extends GetxController {
  // VxSwpiper.builder Colors
  List<Color> cardColors = [
    const Color.fromARGB(245, 243, 253, 245),
    const Color.fromARGB(225, 255, 227, 225),
    const Color.fromARGB(255, 239, 245, 200)
  ];
  // VxSwpiper.builder icons and Text List
  final vxSwiperText = ['Easy to edit', 'Well Documented', 'Complete Feature'];
  final vsSwiperIcon = [brushIcon, menuColorIcon, iconDone];
  final vxSwiperSubtitleList = [
    'So the user easily use and customized the template ',
    'With neat page layout and well aranged code',
    'Equiped with various feature such as list buttons and others'
  ];
  // Social Media Icons List
  final socialMediaIconList = [
    facebookIcon,
    instagramIcon,
    twitterIcon,
    whatsappIcon
  ];
}
