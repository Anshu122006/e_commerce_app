import 'package:e_commerce_app/common/decoration/edges/bottom_inward_curved.dart';
import 'package:e_commerce_app/common/decoration/shapes/circle.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CPrimaryHeader extends StatelessWidget {
  const CPrimaryHeader({super.key, required this.child, this.backgroundColor});

  final Color? backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CBottomInwardCurvedEdge(),
      child: Container(
        width: double.infinity,
        height: CDeviceHelper.getScreenHeight(context) * 0.50,
        color: backgroundColor ?? Theme.of(context).primaryColor,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(top: -100, right: -170, child: CCircle(opacity: 0.15)),
            Positioned(top: 80, right: -200, child: CCircle(opacity: 0.15)),
            child,
          ],
        ),
      ),
    );
  }
}
