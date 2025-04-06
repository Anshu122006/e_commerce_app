import 'package:flutter/material.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key,
    required this.itemCount,
    required this.builder,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 20,
    this.crossAxisSpacing = 20,
    this.mainAxisExtent = 270,
  });

  final int itemCount;
  final int crossAxisCount;
  final Widget? Function(BuildContext, int) builder;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        itemCount: itemCount,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: builder,
      ),
    );
  }
}
