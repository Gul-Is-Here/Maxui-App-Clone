import 'package:flutter/material.dart';
import 'package:maxui_app_clone/consts/strings/images_strings.dart';
import 'package:maxui_app_clone/screens/feature_screen/feature_screen.dart';

final appsListIText = [
  'Chat',
  'Coming soon',
  'Contact',
  'Gallery',
  'Navbar',
  'Page Not Found',
  'Profile',
  'Sign In',
  'Sign Up'
];
final appsIconsList = [
  icChatP,
  icComingSoonA,
  icPhoneA,
  icPhotoGalleryA,
  icNavBarA,
  icPageNotFoundA,
  icProfileP,
  icSinginP,
  icSinginP
];
final appScreensList = [
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen(),
  FeatureScreen()
];
List<Color> appContainerBgColors = [
  const Color.fromARGB(255, 75, 141, 216),
  const Color.fromARGB(255, 236, 127, 127),
  const Color.fromARGB(255, 92, 237, 240),
  const Color.fromARGB(255, 250, 222, 112),
  Colors.purple.shade400,
  Colors.orange,
  Color.fromARGB(255, 224, 224, 63),
  const Color.fromARGB(255, 75, 141, 216),
  const Color.fromARGB(255, 236, 127, 127),
];
