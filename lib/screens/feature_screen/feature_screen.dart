import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeatureScreen extends StatelessWidget {
  const FeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature'),
      ),
      body: Center(
        child: Text('Feature Screen'),
      ),
    );
  }
}
