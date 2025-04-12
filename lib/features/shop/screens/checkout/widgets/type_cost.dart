import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CTypeCost extends StatelessWidget {
  const CTypeCost({
    super.key,
    this.currencySymbol = "\$",
    required this.type,
    required this.cost,
    this.isTotal = false,
  });

  final String currencySymbol;
  final String type;
  final double cost;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    final Color textColor =
        CDeviceHelper.isDarkMode(context) ? Colors.white : Colors.grey.shade700;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          type,
          style: Theme.of(context).textTheme.bodySmall!.apply(color: textColor),
        ),
        Text(
          "$currencySymbol$cost",
          style: Theme.of(context).textTheme.bodySmall!.apply(
            fontWeightDelta: isTotal ? 3 : 1,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
