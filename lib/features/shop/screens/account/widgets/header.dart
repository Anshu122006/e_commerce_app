import 'package:e_commerce_app/common/decoration/shapes/bottom_inward_curved.dart';
import 'package:e_commerce_app/common/decoration/shapes/circle.dart';
import 'package:e_commerce_app/features/shop/screens/account/widgets/user_profile_tile.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CAccountHeader extends StatelessWidget {
  const CAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      expandedHeight: 150,
      backgroundColor: CColors.primaryColor,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        expandedTitleScale: 1,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: CPaddings.md),
            Flexible(child: CUserProfileTile()),
            const SizedBox(height: CPaddings.md),
          ],
        ),
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
                  right: CPaddings.md,
                  child: Text(
                    "Account",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge!.apply(color: Colors.white),
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
