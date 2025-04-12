import 'package:e_commerce_app/common/widgets/cards/brand_card.dart';
import 'package:e_commerce_app/common/widgets/label_value.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/widgets/discount_price.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/widgets/product_desc.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/widgets/product_rating.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CBodyUpper extends StatelessWidget {
  const CBodyUpper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CRating(rating: 4.6, count: 325),

        const SizedBox(height: 10),

        CDiscountPrice(),

        const SizedBox(height: 14),

        CProductDesc(desc: "Nike sports shoes"),

        const SizedBox(height: 6),

        CLabelValue(label: "Status", stringValues: ["In Stock"]),

        const SizedBox(height: 14),

        CBrandCard(
          brandName: "Nike",
          image: CImages.shoeIcon,
          showBorder: false,
          scale: 0.6,
        ),
      ],
    );
  }
}
