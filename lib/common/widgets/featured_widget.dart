import 'package:flutter/material.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({
    Key? key,
    required this.image,
    required this.num,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String image;
  final int num;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // Calculate adaptive width based on screen width
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth = screenWidth > 600 ? 150 : screenWidth * 0.40;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        color: Colors.white,
        height: 220,
        width: containerWidth,
        child: Card(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 35,
                  color: color,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$num',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "+",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Image.asset(
                  image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 180,
                left: 25,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
