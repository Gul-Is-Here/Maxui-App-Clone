import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home/home.dart';

void main() {
  runApp(const Maxui());
}

class Maxui extends StatelessWidget {
  const Maxui({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maxui',
      theme: ThemeData(),
      home: const Home(),
    );
  }
}
