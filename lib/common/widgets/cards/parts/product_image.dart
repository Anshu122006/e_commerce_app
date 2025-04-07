import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CProductImage extends StatelessWidget {
  const CProductImage({super.key, required this.image, required this.discount});

  final String image;
  final double discount;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return CRoundedImage(
      padding: EdgeInsets.all(6),
      backgroundColor: isDark ? Colors.grey.shade900 : Colors.grey.shade50,
      image: image,
      fit: BoxFit.scaleDown,
    );
  }
}
