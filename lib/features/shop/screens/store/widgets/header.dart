import 'package:e_commerce_app/common/widgets/accessories/heading.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cards/brand_card.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CStoreHeader extends StatelessWidget {
  const CStoreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: CPaddings.md,
          vertical: CPaddings.l,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: CPaddings.sm),
              child: CHeading(
                title: "Featured brands",
                buttonText: "View all",
                onPressed: () {},
              ),
            ),

            // const SizedBox(height: CPaddings.md),
            CGridLayout(
              itemCount: 4,
              mainAxisExtent: 70,
              builder: (_, index) {
                return CBrandCard(
                  brandName: "Nike",
                  image: CImages.shoeIcon,
                  count: 356,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
