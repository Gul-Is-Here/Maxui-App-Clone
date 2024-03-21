import 'package:flutter/material.dart';

import '../../common/widgets/myDrawer_widget.dart';
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
      body: const Center(
        child: Text('Pages Screen'),
      ),
    );
  }
}
