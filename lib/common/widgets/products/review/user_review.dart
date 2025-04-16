import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/rating/star_rating_indicator.dart';
import 'package:e_commerce_app/common/widgets/texts/read_more.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CUserReview extends StatelessWidget {
  const CUserReview({
    super.key,
    required this.username,
    required this.date,
    required this.desc,
    required this.rating,
    this.child,
  });

  final String username;
  final String date;
  final String desc;
  final double rating;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: CSizes.columnSpacingMid,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: CSizes.rowSpacingMid,
              children: [
                CRoundedImage(
                  image: CImages.profileIcon,
                  isCircle: true,
                  radius: 16,
                ),

                Text(
                  username,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.apply(fontWeightDelta: 3),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),

        Row(
          children: [
            CStarRatingIndicator(rating: rating),
            const SizedBox(width: CSizes.rowSpacingLarge),
            Text(
              date,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.apply(fontWeightDelta: 2),
            ),
          ],
        ),

        CReadMore(text: desc),

        child ?? SizedBox(),

        const SizedBox(height: CSizes.columnSpacingMid),
      ],
    );
  }
}
