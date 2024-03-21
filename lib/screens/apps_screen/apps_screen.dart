import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppsScreen extends StatelessWidget {
  const AppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps'),
      ),
      body: Center(
        child: Text('Apps Screen'),
      ),
    );
  }
}
