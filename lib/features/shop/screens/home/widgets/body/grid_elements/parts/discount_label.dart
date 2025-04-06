import 'package:flutter/material.dart';

class CDiscountLabel extends StatelessWidget {
  const CDiscountLabel({super.key, required this.discount});

  final double discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.yellow.shade600.withAlpha(220),
      ),
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
