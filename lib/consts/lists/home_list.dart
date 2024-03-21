import 'package:flutter/material.dart';

import '../../screens/apps_screen/apps_screen.dart';
import '../../screens/feature_screen/feature_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/pages_screen/pages_screen.dart';
import '../images_strings.dart';

const mainIconList = [featureIcon, pagesIcons, appIcon];
const mainIconString = ['Features', 'Pages', 'Apps'];

final List<Widget> tabOptions = <Widget>[
  const HomeScreen(),
  const FeatureScreen(),
  const PagesScreen(),
  const AppsScreen()
];

// Home Screen Swiper Lists
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

// Home screen Icons Text And Colors Lists
final drawericonList = [
  icHomeD,
  icStarD,
  icPageD,
  icAppD,
  icLoginD,
  icSettingD,
  icInfoD,
  icPrivacyD,
  icPowerD,
];
final drawerScreens = [
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
final drawerTextList = [
  'Home',
  'Features',
  'pages',
  'Apps',
  'Login',
  'Settings',
  'About',
  'Privacy',
  'Logout'
];
List<Color> drawerContainerBgColors = [
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

// Home Screen Social Media Icons List
final socialMediaIconList = [
  facebookIcon,
  instagramIcon,
  twitterIcon,
  whatsappIcon
];
