import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_name.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CBrandCard extends StatelessWidget {
  const CBrandCard({
    super.key,
    required this.brandName,
    required this.image,
    this.count = 0,
    this.scale = 1,
    this.isVerified = true,
    this.showBorder = true,
    this.showCount = true,
  });

  final String brandName;
  final String image;
  final double scale;
  final int count;
  final bool isVerified;
  final bool showBorder;
  final bool showCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CRoundedContainer(
        showBorder: showBorder,
        child: Row(
          children: [
            Flexible(
              child: CRoundedImage(
                height: 52 * scale,
                width: 52 * scale,
                radius: 12 * scale,
                image: image,
                overlayColor:
                    CDeviceHelper.isDarkMode(context)
                        ? Colors.white
                        : Colors.black,
              ),
            ),

            const SizedBox(width: 3),

            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CBrandName(brandName: brandName, isVerified: isVerified),
                  showCount
                      ? Text(
                        "$count products",
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )
                      : SizedBox(width: 0, height: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
