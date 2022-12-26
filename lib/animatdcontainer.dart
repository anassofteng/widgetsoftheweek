import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainer extends StatefulWidget {
  const AnimateContainer({super.key});

  @override
  State<AnimateContainer> createState() => _AnimateContainerState();
}

class _AnimateContainerState extends State<AnimateContainer> {
  double height = 100;
  double width = 100;
  Color color = Colors.cyan;
  BorderRadiusGeometry radiusgeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: radiusgeometry,
          ),
          duration: Duration(seconds: 3),
          curve: Curves.bounceInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final random = Random();
          height = random.nextInt(300).toDouble();
          width = random.nextInt(300).toDouble();
          color = Color.fromRGBO(
              random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
          radiusgeometry =
              BorderRadius.circular(random.nextInt(100).toDouble());
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
