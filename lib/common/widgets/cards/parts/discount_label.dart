import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class CDiscountLabel extends StatelessWidget {
  const CDiscountLabel({super.key, required this.discount});

  final double discount;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
      radius: 10,
      backgroundColor: Colors.yellow.shade600.withAlpha(220),
      showBorder: false,
      child: Text(
        "$discount%",
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.bodyLarge!.apply(
          fontWeightDelta: 2,
          fontFamily: "Pacifico",
          color: Colors.black,
        ),
      ),
    );
  }
}
