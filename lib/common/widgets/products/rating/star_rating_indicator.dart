import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class CStarRatingIndicator extends StatelessWidget {
  const CStarRatingIndicator({super.key, required this.rating, this.count});

  final double rating;
  final String? count;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RatingBarIndicator(
          rating: rating,
          itemCount: 5,
          itemSize: 20,
          unratedColor: Colors.grey.shade200,
          itemBuilder:
              (context, index) =>
                  Icon(Iconsax.star1, color: Theme.of(context).primaryColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child:
              count != null
                  ? Text(count!, style: Theme.of(context).textTheme.bodySmall)
                  : null,
        ),
      ],
    );
  }
}
