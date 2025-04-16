import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CRating extends StatelessWidget {
  const CRating({super.key, required this.rating, required this.count});

  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Iconsax.star5, color: Colors.yellow, size: CIconSizes.l),
            SizedBox(width: 6),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${rating > 5 ? 5 : rating} ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "($count)",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.apply(fontWeightDelta: 3),
                  ),
                ],
              ),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
      ],
    );
  }
}
