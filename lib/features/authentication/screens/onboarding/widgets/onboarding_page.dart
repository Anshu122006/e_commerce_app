import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class COnboardingPage extends StatelessWidget {
  const COnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.l),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: CDeviceHelper.getScreenHeight(context) * 0.7,
            width: CDeviceHelper.getScreenWidth(context) * 1,
          ),
          SizedBox(height: CSizes.columnSpacingSmall),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
