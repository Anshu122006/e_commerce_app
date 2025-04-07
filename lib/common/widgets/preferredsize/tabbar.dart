import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CTabBar({
    super.key,
    required this.tabs,
    this.isScrollable = true,
    this.color,
  });

  final List<Tab> tabs;
  final bool isScrollable;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDark = CDeviceHelper.isDarkMode(context);
    return Material(
      color: color ?? (isDark ? Colors.grey.shade900 : Colors.grey.shade50),
      child: TabBar(isScrollable: isScrollable, tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
