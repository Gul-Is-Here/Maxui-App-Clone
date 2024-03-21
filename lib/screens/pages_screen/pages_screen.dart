import 'package:flutter/material.dart';
import 'package:maxui_app_clone/consts/lists/page_list.dart';

import '../../common/widgets/myDrawer_widget.dart';
import '../../consts/strings/images_strings.dart';
import '../../consts/lists/home_list.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({super.key});

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
      // Use IconButton with 'menu' icon to open the drawer
      // leading: IconButton(
      //   icon: const Icon(Icons.menu),
      //   onPressed: () {
      //     Scaffold.of(context).openDrawer();
      //   },
      // ),
      appBar: AppBar(
        title: const Text(
          'Pages',
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
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
          pageListText.length,
          (index) => MyDrawerItem(
              title: pageListText[index],
              bgColor: pageListBgColors[index],
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return pagesScreenList[index];
                }));
              },
              icon: pageListIcon[index]),
        ),
      ),
    );
  }
}
