import 'package:e_commerce_app/common/decoration/edges/bottom_inward_curved.dart';
import 'package:flutter/material.dart';

class CBottomInwardCurved extends StatelessWidget {
  const CBottomInwardCurved({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CBottomInwardCurvedEdge(),
      child: child,
    );
  }
}