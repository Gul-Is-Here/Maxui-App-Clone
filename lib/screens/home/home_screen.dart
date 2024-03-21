// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common/widgets/featured_widget.dart';
import '../../common/widgets/vsSwipwe_widget.dart';
import '../../consts/images_strings.dart';
import '../../controllers/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Scaffold(
      drawer: const Drawer(
          // Add items to the drawer
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
      body: SingleChildScrollView(
        child: Column(children: [
          // Text Widgets
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Hi, aStylers!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Start your Best Experience with Maxui',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Image and Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(homeIntroImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To Maxui",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mobile Template",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          15.heightBox,
          // Customized Featured button
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedWidget(
                  image: featureColorIcon,
                  num: 9,
                  title: 'Features',
                  color: Colors.blue.shade300,
                ),
                const FeaturedWidget(
                  image: appColorIcon,
                  num: 10,
                  title: 'Apps',
                  color: Colors.blue,
                ),
                FeaturedWidget(
                  image: pagesColorIcon,
                  num: 9,
                  title: 'Pages',
                  color: Colors.yellow.shade800,
                )
              ],
            ),
          ),
          15.heightBox,
          // VxSwiper.builder Customized Code
          const VsSwiperWidget(),
          20.heightBox,
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(245, 197, 223, 252),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                    height: 20), // Use SizedBox to add vertical spacing
                const ListTile(
                  title: Text(
                    'Subscribe Newsletter',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Enter your email to receive newsletters',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: Image.asset(
                                  iconDone,
                                  height: 100,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    20.heightBox,
                    const ListTile(
                      title: Text(
                        textAlign: TextAlign.center,
                        "Maxui",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        textAlign: TextAlign.center,
                        'Mobile Template',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          4,
                          (index) => IconButton(
                              onPressed: () {},
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset(
                                    controller.socialMediaIconList[index],
                                    fit: BoxFit.cover,
                                    width: 35,
                                  ),
                                ),
                              ))),
                    ),
                    20.heightBox,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(textAlign: TextAlign.center, 'Made with '),
                        Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                        ),
                        Text(' aStyler')
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
