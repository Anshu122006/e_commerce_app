import 'package:e_commerce_app/common/images/rounded_image.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CProductImage extends StatelessWidget {
  const CProductImage({super.key, required this.image, required this.discount});

  final String image;
  final double discount;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey.shade800 : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(18),
      ),
      child: CRoundedImage(image: image, fit: BoxFit.scaleDown),
    );
  }
}
