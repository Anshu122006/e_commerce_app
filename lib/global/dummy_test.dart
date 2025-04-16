import 'package:e_commerce_app/common/decoration/shapes/bottom_inward_curved.dart';
import 'package:e_commerce_app/common/decoration/shapes/circle.dart';
import 'package:e_commerce_app/common/widgets/text_fields/searchbar.dart';
import 'package:e_commerce_app/global/top.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/header/list.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class DummyAppBar extends StatelessWidget {
  const DummyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      backgroundColor: CColors.primaryColor,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        expandedTitleScale: 1,
        background: Container(
          height: double.infinity,
          width: double.infinity,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: CBottomInwardCurved(
            child: Stack(
              children: [
                Container(color: Theme.of(context).primaryColor),
                Positioned(
                  top: -60,
                  right: -170,
                  child: CCircle(opacity: 0.15),
                ),
                Positioned(
                  top: 100,
                  right: -200,
                  child: CCircle(opacity: 0.15),
                ),
                Positioned(
                  top: CPaddings.xxl,
                  left: CPaddings.md,
                  right: 0,
                  child: Column(
                    spacing: CSizes.columnSpacingSmall,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: CPaddings.md),
                        child: CAppBarTop(),
                      ),
                      const SizedBox(height: CSizes.columnSpacingMid),
                      CSearchbar(labelText: "Search anything"),
                      CHeaderList(height: 120),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// CAppBar(showBackArrow: false, title: AppBarTitle(), actions: [CCartButton()]);
