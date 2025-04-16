import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CListItem extends StatelessWidget {
  const CListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: CPaddings.sm),
      child: Column(
        spacing: CSizes.columnSpacingSmall,
        children: [
          Expanded(
            flex: 3,
            child: FittedBox(
              child: CRoundedImage(
                padding: EdgeInsets.all(CPaddings.xxsm),
                isCircle: true,
                backgroundColor: isDark ? CColors.dark : CColors.light,
                image: CImages.clothIcon,
                overlayColor: isDark ? CColors.white : CColors.black,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Logo",
              style: Theme.of(context).textTheme.labelLarge!.apply(
                color: isDark ? CColors.white : CColors.darkGrey,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
