import 'package:flutter/material.dart';

class CProductPrice extends StatelessWidget {
  const CProductPrice({
    super.key,
    required this.price,
    this.currencySymbol = "\$",
    this.scale = 1,
    this.isCrossed = false,
  });

  final double price;
  final double scale;
  final String currencySymbol;
  final bool isCrossed;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$currencySymbol$price",
      style:
          isCrossed
              ? Theme.of(context).textTheme.bodyMedium!.apply(
                fontSizeFactor: 1 * scale,
                decoration: TextDecoration.lineThrough,
              )
              : Theme.of(context).textTheme.bodyMedium!.apply(
                fontSizeFactor: 1.3 * scale,
                fontWeightDelta: 3,
                decoration: TextDecoration.none,
              ),
    );
  }
}
