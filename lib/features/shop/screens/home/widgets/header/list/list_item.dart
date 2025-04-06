import 'package:e_commerce_app/common/decoration/shapes/circle.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CListItem extends StatelessWidget {
  const CListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: CCircle(
              opacity: 1,
              color: Colors.white,
              child: Image(
                image: AssetImage(CImages.logo),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Logo",
                style: TextStyle(
                  color: isDark ? Colors.white : Colors.grey.shade700,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
