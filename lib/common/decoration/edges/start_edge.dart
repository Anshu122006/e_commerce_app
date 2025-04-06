import 'dart:math';

import 'package:flutter/material.dart';

class CStarEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double baseAngle = 36 * (pi / 180);
    final double incAngle = 72 * (pi / 180);
    final double a = size.width / 2;
    final double b = size.height / 2;

    final double r1 = size.height / 2;
    final double r2 = r1 * (cos(incAngle) / cos(baseAngle));

    final List<Offset> points = [];

    for (int i = 0; i < 10; i++) {
      int j = ((i - i % 2) / 2).toInt();
      if (i % 2 == 0) {
        double x = a + r1 * sin(pi + j * incAngle);
        double y = b + r1 * cos(pi + j * incAngle);
        points.add(Offset(x, y));
      } else {
        double x = a + r2 * sin(pi + baseAngle + j * incAngle);
        double y = b + r2 * cos(pi + baseAngle + j * incAngle);
        points.add(Offset(x, y));
      }
    }

    path.moveTo(points[0].dx, points[0].dy);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
