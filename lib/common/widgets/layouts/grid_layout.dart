import 'package:flutter/material.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key,
    required this.itemCount,
    required this.builder,
    this.shrinkWrap = true,
    this.isScrollable = false,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 20,
    this.crossAxisSpacing = 20,
    this.mainAxisExtent = 290,
  });

  final int itemCount;
  final int crossAxisCount;
  final bool shrinkWrap;
  final bool isScrollable;
  final Widget? Function(BuildContext, int) builder;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: shrinkWrap,
      physics: isScrollable ? null : NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: builder,
    );
  }
}
