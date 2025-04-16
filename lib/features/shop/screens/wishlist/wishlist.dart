import 'package:e_commerce_app/common/widgets/products/cards/vertical_image_card.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        titleText: "Wishlist",
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.add,
              color:
                  CDeviceHelper.isDarkMode(context)
                      ? CColors.white
                      : CColors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: CPaddings.md),
        child: CGridLayout(
          itemCount: 10,
          shrinkWrap: true,
          isScrollable: false,
          builder: (_, index) => CVerticalImageCard(id: 0),
        ),
      ),
    );
  }
}
