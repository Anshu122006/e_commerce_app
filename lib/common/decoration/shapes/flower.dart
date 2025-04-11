import 'dart:math';

import 'package:e_commerce_app/common/decoration/edges/petal_edge.dart';
import 'package:flutter/material.dart';

class CFlower extends StatelessWidget {
  const CFlower({
    super.key,
    this.petals = 8,
    this.radius = 100,
    this.opacity = 1,
    this.expand = false,
    this.color = Colors.white,
  });

  final int petals;
  final double radius;
  final double opacity;
  final bool expand;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final int n = petals;
    final double height = radius * 2;
    final double width = expand ? (radius * (2 * pi / n)) / 1.5 : (radius * (2 * pi / n)) / 3;
    final Widget petal = ClipPath(
      clipper: CPetalEdge(),
      child: Container(height: height, width: width, color: color),
    );
    final List<Widget> petalList = [];
    for (int i = 0; i < n; i++) {
      double angle = 2 * pi / n;
      petalList.add(Center(child: Transform.rotate(angle: angle * i, child: petal)));
    }

    final Widget flower = Stack(children: petalList);

    return Opacity(
      opacity: opacity > 1 ? 1 : opacity,
      child: LayoutBuilder(
        builder: (context, constraint) {
          final bool scaleDown =
              radius * 2 > constraint.maxWidth || radius * 2 > constraint.maxHeight;

          return scaleDown ? FittedBox(child: flower) : UnconstrainedBox(child: flower);
        },
      ),
    );
  }
}
