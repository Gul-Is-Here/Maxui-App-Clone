import 'package:flutter/material.dart';
import 'package:maxui_app_clone/consts/strings/images_strings.dart';

import '../../screens/apps_screen/apps_screen.dart';

final pageListText = [
  'About Us',
  'Faq',
  'Forum',
  'Gallery',
  'Maintenance',
  'Portfolio',
  'Pricing Table',
  'Profile',
  'Reset Password',
  'Search bar',
  'Settings',
  'Sign In',
  'Sign Up',
  'Testimonial',
  'Privacy'
];
final pageListIcon = [
  icInfoP,
  icQuestionP,
  icFourmP,
  icGalleryP,
  icMaintenanceP,
  icPortfolioP,
  icPricingTableP,
  icProfileP,
  icResetPsswordP,
  icSearchP,
  icSettingsP,
  icSinginP,
  icSignUpP,
  icChatP,
  icLockP
];

final pagesScreenList = [
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen(),
  AppsScreen()
];
List<Color> pageListBgColors = [
  const Color.fromARGB(255, 75, 141, 216),
  const Color.fromARGB(255, 236, 127, 127),
  const Color.fromARGB(255, 92, 237, 240),
  const Color.fromARGB(255, 250, 222, 112),
  Colors.purple.shade400,
  Colors.orange,
  const Color.fromARGB(255, 224, 224, 63),
  const Color.fromARGB(255, 75, 141, 216),
  const Color.fromARGB(255, 236, 127, 127),
  const Color.fromARGB(255, 75, 141, 216),
  const Color.fromARGB(255, 92, 237, 240),
  Colors.purple.shade400,
  const Color.fromARGB(255, 112, 213, 117),
  const Color.fromARGB(255, 229, 80, 179),
  const Color.fromARGB(255, 97, 95, 235),
];
