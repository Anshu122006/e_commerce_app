import 'package:e_commerce_app/common/widgets/searchbar.dart';
import 'package:e_commerce_app/testing/shopping/screens/appbar/background.dart';
import 'package:e_commerce_app/testing/shopping/screens/appbar/deliver_to.dart';
import 'package:e_commerce_app/testing/shopping/screens/appbar/top_part.dart';
import 'package:flutter/material.dart';

class CAppBar extends StatefulWidget {
  const CAppBar({
    super.key,
    this.title,
    this.height = 200,
    this.actions,
    this.adress,
    this.leadingIcon,
    this.leadingImage,
    this.onLeadingPressed,
    this.showBackArrow = false,
    this.helperText,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Image? leadingImage;
  final IconData? leadingIcon;
  final bool showBackArrow;
  final VoidCallback? onLeadingPressed;
  final double height;

  final String? adress;

  final String? helperText;

  @override
  State<CAppBar> createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return CBackground(
      height: widget.height,
      child: Column(
        children: [
          CTopPart(
            title: widget.title,
            height: widget.height,
            leadingIcon: widget.leadingIcon,
            leadingImage: widget.leadingImage,
            onLeadingPressed: widget.onLeadingPressed,
            showBackArrow: widget.showBackArrow,
            actions: widget.actions,
          ),
          CDeliverTo(adress: widget.adress),
          CSearchbar(labelText: "Search anything"),
        ],
      ),
    );
  }
}
