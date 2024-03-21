import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../controllers/home_screen_controller.dart';

class VsSwiperWidget extends StatelessWidget {
  const VsSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return VxSwiper.builder(
      aspectRatio: 16 / 9,
      autoPlay: true,
      height: 130,
      enlargeCenterPage: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        // Accessing color based on index from controller
        return Card(
          color: controller.cardColors[index],
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 60,
                child: Text(
                  controller.vxSwiperText[index],
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ListTile(
                  leading: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        controller.vsSwiperIcon[index],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      )),
                  subtitle: Text(controller.vxSwiperSubtitleList[index]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
