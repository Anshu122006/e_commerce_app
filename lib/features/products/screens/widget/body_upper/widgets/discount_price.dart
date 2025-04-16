import 'package:e_commerce_app/common/widgets/products/cards/parts/discount_label.dart';
import 'package:e_commerce_app/common/widgets/products/product_price.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CDiscountPrice extends StatelessWidget {
  const CDiscountPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: CSizes.rowSpacingMid,
      children: [
        CDiscountLabel(discount: 25, scale: 0.7),
        CProductPrice(price: 31.0, isCrossed: true),
        CProductPrice(price: 22.0, isCrossed: false),
      ],
    );
  }
}
