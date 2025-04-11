import 'package:e_commerce_app/common/decoration/edges/start_edge.dart';
import 'package:flutter/material.dart';

class CStar extends StatelessWidget {
  const CStar({
    super.key,
    this.radius = 150,
    this.opacity = 1,
    this.angle = 0,
    this.color = Colors.white,
    this.border,
  });
  final double radius;
  final double opacity;
  final double angle;
  final Color color;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    final Widget star = Transform.rotate(
      angle: angle,
      child: ClipPath(
        clipper: CStarEdge(),
        child: Container(
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(border: border, color: color),
        ),
      ),
    );

    return Opacity(
      opacity: opacity > 1 ? 1 : opacity,
      child: LayoutBuilder(
        builder: (context, constraint) {
          final bool scaleDown =
              radius * 2 > constraint.maxWidth || radius * 2 > constraint.maxHeight;

          return scaleDown ? FittedBox(child: star) : UnconstrainedBox(child: star);
        },
      ),
    );
  }
}
