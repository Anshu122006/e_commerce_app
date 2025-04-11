import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CRoundedContainer extends StatelessWidget {
  const CRoundedContainer({
    super.key,
    this.backgroundColor,
    this.borderColor,
    this.radius = 10,
    this.child,
    this.showBorder = true,
    this.isCircle = false,
    this.height,
    this.width,
    this.padding,
  });

  final Color? backgroundColor;
  final Color? borderColor;
  final bool showBorder;
  final bool isCircle;
  final double? height;
  final double? width;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isCircle ? radius * 2 : height,
      width: isCircle ? radius * 2 : width,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border:
            showBorder
                ? Border.all(
                  width: 1,
                  color:
                      borderColor ??
                      (CDeviceHelper.isDarkMode(context)
                          ? Colors.white
                          : Colors.grey.shade600),
                )
                : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
