import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/apps_screen/apps_screen.dart';
import '../screens/feature_screen/feature_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/pages_screen/pages_screen.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;

// List of tabs Screen
  final List<Widget> tabOptions = <Widget>[
    const HomeScreen(),
    const FeatureScreen(),
    const PagesScreen(),
    const AppsScreen()
  ];

  // Method for Selected Tab Increment
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
