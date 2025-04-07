import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,
    this.backgroundCOlor,
    this.iconColor,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final Color? backgroundCOlor;
  final Color? iconColor;
  final VoidCallback? leadingOnPressed;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    Color? iconTheme =
        iconColor ??
        (CDeviceHelper.isDarkMode(context)
            ? Colors.white
            : Colors.grey.shade800);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundCOlor,
        title: title,
        leading:
            (leadingIcon != null)
                ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIcon, color: iconTheme),
                )
                : showBackArrow
                ? IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back, color: iconTheme),
                )
                : null,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
