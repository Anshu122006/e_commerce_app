import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CRatingText extends StatelessWidget {
  const CRatingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "4.7",
      style: Theme.of(context).textTheme.bodyMedium!.apply(
        fontSizeFactor: 3.5,
        color: CDeviceHelper.isDarkMode(context) ? Colors.white : Colors.black,
      ),
    );
  }
}
