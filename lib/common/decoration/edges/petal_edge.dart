import 'package:flutter/material.dart';

class CPetalEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final height = size.height / 2;
    final width = size.width;
    final deviation = width * 0.03;

    final List<Offset> points = [
      Offset(size.width / 2 - deviation, height),
      Offset(size.width / 2 - width, 0),
      Offset(size.width / 2, 0),
      Offset(size.width / 2 + width, 0),
      Offset(size.width / 2 + deviation, height),
    ];

    path.moveTo(points[0].dx, points[0].dy);
    path.quadraticBezierTo(points[1].dx, points[1].dy, points[2].dx, points[2].dy);
    path.quadraticBezierTo(points[3].dx, points[3].dy, points[4].dx, points[4].dy);

    // for (int i = 1; i < points.length; i++) {
    //   path.lineTo(points[i].dx, points[i].dy);
    // }

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
