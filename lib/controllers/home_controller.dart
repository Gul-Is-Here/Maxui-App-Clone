import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  // Method for Selected Tab Increment
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
