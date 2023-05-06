import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key});

  @override
  AnimatedBackgroundState createState() => AnimatedBackgroundState();
}

class AnimatedBackgroundState extends State<AnimatedBackground> {
  static const List<Color> colorList = [
    Color(0xFF6ECBF5),
    Color(0xFF7A04EB),
    Color(0xFFE0D9F6),
    Color(0xFFFE75FE),
  ];

  static const List<Alignment> alignmentList = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];
  int index = 0;

  Color fromColor = colorList[0];
  Color toColor = colorList[1];

  Alignment start = alignmentList[0];
  Alignment end = alignmentList[3];

  late Timer backgroundAnimation;

  @override
  void initState() {
    super.initState();
    backgroundAnimation = Timer(const Duration(seconds: 1), _updateBackground);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      onEnd: _updateBackground,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: start,
          end: end,
          colors: [
            toColor,
            fromColor,
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    backgroundAnimation.cancel();
    super.dispose();
  }

  void _updateBackground() {
    setState(() {
      index = index + 1;
      // animate the color
      toColor = colorList[index % colorList.length];
      fromColor = colorList[(index + 1) % colorList.length];

      //// animate the alignment
      start = alignmentList[index % alignmentList.length];
      end = alignmentList[(index + 2) % alignmentList.length];
    });
  }
}
