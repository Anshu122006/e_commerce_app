import 'package:e_commerce_app/common/widgets/products/rating/linear_rating_bar.dart';
import 'package:e_commerce_app/common/widgets/products/rating/star_rating_indicator.dart';
import 'package:e_commerce_app/common/widgets/products/rating/rating_text.dart';
import 'package:flutter/material.dart';

class CProductRating extends StatelessWidget {
  const CProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(flex: 4, child: CRatingText()),
            Expanded(
              flex: 9,
              child: Column(
                children: [
                  CLinearRatingBar(index: 5, value: 0.7),
                  CLinearRatingBar(index: 4, value: 0.4),
                  CLinearRatingBar(index: 3, value: 0.6),
                  CLinearRatingBar(index: 2, value: 0.3),
                  CLinearRatingBar(index: 1, value: 0.1),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        CStarRatingIndicator(rating: 4.7, count: "12,230"),
      ],
    );
  }
}
