import 'package:flutter/material.dart';
import 'package:maxui_app_clone/consts/lists/apps_list.dart';

import '../../common/widgets/myDrawer_widget.dart';
import '../../consts/lists/home_list.dart';
import '../../consts/strings/images_strings.dart';

class AppsScreen extends StatelessWidget {
  const AppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                drawerTextList.length,
                (index) => MyDrawerItem(
                  title: drawerTextList[index],
                  bgColor: drawerContainerBgColors[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => drawerScreens[index],
                    ));
                  },
                  icon: drawericonList[index], // Convert Icons to IconData
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        // Use IconButton with 'menu' icon to open the drawer
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     Scaffold.of(context).openDrawer();
        //   },
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.asset(homeAppBarIcon),
            ),
          )
        ],
      ),
      body: ListView(
        children: List.generate(
          appsIconsList.length,
          (index) => MyDrawerItem(
              title: appsListIText[index],
              bgColor: appContainerBgColors[index],
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return appScreensList[index];
                }));
              },
              icon: appsIconsList[index]),
        ),
      ),
    );
  }
}
