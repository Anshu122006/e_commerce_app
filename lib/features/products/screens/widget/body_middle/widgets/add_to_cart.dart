import 'package:e_commerce_app/common/widgets/products/count_display.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CAddToCart extends StatelessWidget {
  const CAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(
        horizontal: CPaddings.md,
        vertical: CPaddings.sm,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
        color:
            CDeviceHelper.isDarkMode(context)
                ? CColors.darkGrey
                : CColors.lightGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CCountDisplay(),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: CColors.black,
              foregroundColor: CColors.white,
            ),
            child: Text(
              "Add to cart",
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.apply(color: CColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
