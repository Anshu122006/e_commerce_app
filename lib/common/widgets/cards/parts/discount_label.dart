import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class CDiscountLabel extends StatelessWidget {
  const CDiscountLabel({super.key, required this.discount, this.scale = 1});

  final double discount;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      padding: EdgeInsets.symmetric(
        horizontal: 12 * scale,
        vertical: 1 * scale,
      ),
      radius: 10 * scale,
      backgroundColor: Colors.yellow.shade600.withAlpha(220),
      showBorder: false,
      child: Text(
        "$discount%",
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.bodyLarge!.apply(
          fontSizeFactor: scale,
          fontWeightDelta: 2,
          fontFamily: "Pacifico",
          color: Colors.black,
        ),
      ),
    );
  }
}
