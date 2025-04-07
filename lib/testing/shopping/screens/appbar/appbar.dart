import 'package:e_commerce_app/common/widgets/searchbar.dart';
import 'package:e_commerce_app/testing/shopping/screens/appbar/background.dart';
import 'package:e_commerce_app/testing/shopping/screens/appbar/deliver_to.dart';
import 'package:e_commerce_app/testing/shopping/screens/appbar/top_part.dart';
import 'package:flutter/material.dart';

class CTestAppBar extends StatefulWidget {
  const CTestAppBar({
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
  State<CTestAppBar> createState() => _CTestAppBarState();
}

class _CTestAppBarState extends State<CTestAppBar> {
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
