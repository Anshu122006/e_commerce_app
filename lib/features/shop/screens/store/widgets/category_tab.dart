import 'package:e_commerce_app/common/widgets/products/cards/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/products/cards/vertical_image_card.dart';
import 'package:e_commerce_app/common/widgets/texts/heading.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:flutter/material.dart';

class CCategoryTab extends StatelessWidget {
  const CCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(15),
      children: [
        Column(
          children: [
            // const SizedBox(height: 30),
            CBrandShowCase(
              images: [CImages.shoes, CImages.shoes, CImages.shoes],
            ),
            const SizedBox(height: 10),
            CHeading(
              title: "You might like",
              buttonText: "View all",
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CGridLayout(
              itemCount: 4,
              builder: (_, index) => CVerticalImageCard(id: index),
            ),
          ],
        ),
      ],
    );
  }
}
