import 'package:e_commerce_app/common/images/rounded_image.dart';
import 'package:e_commerce_app/common/texts/brand_name.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CBrandListItem extends StatelessWidget {
  const CBrandListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color:
                CDeviceHelper.isDarkMode(context)
                    ? Colors.white
                    : Colors.grey.shade600,
          ),
        ),
        child: Row(
          children: [
            Flexible(
              child: CRoundedImage(
                height: 52,
                width: 52,
                image: CImages.shoeIcon,
              ),
            ),
            Flexible(
              child: Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CBrandName(brandName: "Nike"),
                    Text(
                      "324 products",
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
