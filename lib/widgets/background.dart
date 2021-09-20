import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration
    (
      gradient: LinearGradient
      (
        begin: Alignment.topCenter, end: Alignment.bottomCenter, 
        colors: [Color(0xff2E305F), Color(0xff202333)],
        stops: [0.2, 0.8]
      )
    );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient
        Container(decoration: boxDecoration),

        // Pink Box
        Positioned(child: _PinkBox(), top: -100, left: -30)
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient
          (
            colors: [Color.fromRGBO(236, 98, 188, 1), Color.fromRGBO(251, 142, 172, 1)]
          )
        ),
      ),
    );
  }
}