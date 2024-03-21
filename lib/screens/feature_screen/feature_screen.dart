import 'package:flutter/material.dart';
import 'package:maxui_app_clone/consts/lists/feature_list.dart';
import '../../common/widgets/myDrawer_widget.dart';
import '../../consts/lists/home_list.dart';
import '../../consts/images_strings.dart';

class FeatureScreen extends StatelessWidget {
  const FeatureScreen({super.key});

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
          title: const Text(
            'Features',
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
                featureIconText.length,
                (index) => MyDrawerItem(
                    title: featureIconText[index],
                    bgColor: featureListColor[index],
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return featureScreenList[index];
                      }));
                    },
                    icon: featuredIocns[index]))));
  }
}
