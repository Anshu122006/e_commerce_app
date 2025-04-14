import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({
    super.key,
    this.showBackArrow = false,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,
    this.titleText,
    this.title,
  });

  final String? titleText;
  final Widget? title;

  final bool showBackArrow;
  final VoidCallback? leadingOnPressed;
  final IconData? leadingIcon;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title ?? Text(titleText ?? ""),
        leading:
            (leadingIcon != null)
                ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIcon),
                )
                : showBackArrow
                ? IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back),
                )
                : null,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CSizes.appBarHeight);
}
