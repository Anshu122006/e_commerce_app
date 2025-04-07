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
    this.isVerified = true,
    this.showBorder = true,
    required this.count,
  });

  final String brandName;
  final String image;
  final bool isVerified;
  final bool showBorder;
  final int count;

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
                height: 52,
                width: 52,
                image: image,
                overlayColor:
                    CDeviceHelper.isDarkMode(context)
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CBrandName(brandName: brandName),
                  Text(
                    "$count products",
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
