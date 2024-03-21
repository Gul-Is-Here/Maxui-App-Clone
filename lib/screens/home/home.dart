import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/images_strings.dart';
import '../../consts/lists/home_list.dart';
import '../../controllers/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Obx(() => tabOptions.elementAt(controller.selectedIndex.value)),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 34,
                color: controller.selectedIndex.value == 0
                    ? Colors.red
                    : Colors.black38,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                size: 34,
                color: controller.selectedIndex.value == 1
                    ? Colors.red
                    : Colors.black38,
              ),
              label: 'Features',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                pagesIcons,
                width: 34,
                color: controller.selectedIndex.value == 2
                    ? Colors.red
                    : Colors.black38,
              ),
              label: 'Pages',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                appIcon,
                width: 34,
                color: controller.selectedIndex.value == 3
                    ? Colors.red
                    : Colors.black38,
              ),
              label: 'Apps',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          elevation: 2,
          selectedItemColor: Colors.red,
          onTap: (index) =>
              controller.onItemTapped(index), // Adjusted onTap function
        ),
      ),
    );
  }
}
