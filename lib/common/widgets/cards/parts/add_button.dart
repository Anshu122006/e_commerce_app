import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CAddButton extends StatelessWidget {
  const CAddButton({super.key, required this.id, this.count = 0});

  final int id;
  final int count;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    final Color backgroundColor = isDark ? Colors.grey.shade200 : Colors.black;
    final Color foregroundColor = isDark ? Colors.black : Colors.white;
    final double size = 26;

    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: backgroundColor,
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.add, color: foregroundColor, size: size),
        ),
      ),
    );
  }
}
