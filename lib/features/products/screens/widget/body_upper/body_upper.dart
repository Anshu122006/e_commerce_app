import 'package:e_commerce_app/common/widgets/products/cards/brand_card.dart';
import 'package:e_commerce_app/common/widgets/texts/label_value.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/widgets/discount_price.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/widgets/product_desc.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/widgets/product_rating.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CBodyUpper extends StatelessWidget {
  const CBodyUpper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: CSizes.columnSpacingMid,
      children: [
        CRating(rating: 4.6, count: 325),

        CDiscountPrice(),

        CProductDesc(desc: "Nike sports shoes"),

        CLabelValue(label: "Status", stringValues: ["In Stock"]),

        CBrandCard(
          brandName: "Nike",
          image: CImages.shoeIcon,
          showBorder: false,
          scale: CScales.sm,
        ),
      ],
    );
  }
}
