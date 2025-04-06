// import 'package:e_commerce_app/screens/home_page/components/appbar/searchbar.dart';
import 'package:flutter/material.dart';

class CTopPart extends StatelessWidget implements PreferredSizeWidget {
  const CTopPart({
    super.key,
    this.title,
    this.actions,
    this.leadingImage,
    this.leadingIcon,
    this.showBackArrow = false,
    this.height = 200,
    this.onLeadingPressed,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Image? leadingImage;
  final IconData? leadingIcon;
  final bool showBackArrow;
  final VoidCallback? onLeadingPressed;
  final double height;

  _leading(BuildContext context) {
    if (showBackArrow) {
      return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      );
    } else if (leadingImage != null) {
      return Transform.translate(
        offset: Offset(16, 0),
        child: Transform.scale(scale: 1.8, child: leadingImage),
      );
    } else if (leadingIcon != null) {
      return IconButton(onPressed: onLeadingPressed, icon: Icon(leadingIcon));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: _leading(context),
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
