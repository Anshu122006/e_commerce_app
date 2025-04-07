import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
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
            child: FittedBox(
              child: CRoundedImage(
                padding: EdgeInsets.all(2),
                isCircle: true,
                backgroundColor:
                    isDark ? Colors.grey.shade900 : Colors.grey.shade50,
                image: CImages.clothIcon,
                overlayColor: isDark ? Colors.white : Colors.black,
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
