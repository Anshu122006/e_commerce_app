import 'package:e_commerce_app/common/widgets/products/count_display.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/label_value.dart';
import 'package:e_commerce_app/common/widgets/products/product_price.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_name.dart';
import 'package:e_commerce_app/common/decoration/font_types.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CCartItem extends StatelessWidget {
  const CCartItem({super.key, this.showCount = true});

  final bool showCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: CRoundedImage(
            image: CImages.shoes,
            height: 80,
            width: 80,
            padding: EdgeInsets.all(CPaddings.sm),
            showBorder: false,
            backgroundColor:
                CDeviceHelper.isDarkMode(context)
                    ? CColors.darkGrey
                    : CColors.lightGrey,
          ),
        ),

        const SizedBox(width: CSizes.rowSpacingMid),

        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CBrandName(brandName: "Nike"),
              Text(
                "Blue nike sport shoes",
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              Row(
                spacing: CSizes.rowSpacingMid,
                children: [
                  CLabelValue(
                    label: "color",
                    stringValues: ["Blue"],
                    fontType: CFontTypes.bodySmall,
                  ),
                  CLabelValue(
                    label: "size",
                    stringValues: ["EU 34"],
                    fontType: CFontTypes.bodySmall,
                  ),
                ],
              ),

              showCount
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CCountDisplay(
                        removeBackColor: Colors.grey.shade200,
                        removeTextColor: Colors.black,
                        addBackColor: Theme.of(context).primaryColor,
                        addTextColor: Colors.white,
                        scale: 0.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: CPaddings.md,
                        ),
                        child: CProductPrice(price: 28),
                      ),
                    ],
                  )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
