import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import '../../consts/lists/home_list.dart';

class VsSwiperWidget extends StatelessWidget {
  const VsSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VxSwiper.builder(
      aspectRatio: 16 / 9,
      autoPlay: true,
      height: 130,
      enlargeCenterPage: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        // Accessing color based on index from controller
        return Card(
          color: cardColors[index],
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 60,
                child: Text(
                  vxSwiperText[index],
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
                        vsSwiperIcon[index],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      )),
                  subtitle: Text(vxSwiperSubtitleList[index]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
