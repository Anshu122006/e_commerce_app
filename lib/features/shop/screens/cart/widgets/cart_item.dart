import 'package:e_commerce_app/common/widgets/count_display.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/label_value.dart';
import 'package:e_commerce_app/common/widgets/product_price.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_name.dart';
import 'package:e_commerce_app/utils/constants/font_style.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
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
            padding: EdgeInsets.all(10),
            showBorder: false,
            backgroundColor:
                CDeviceHelper.isDarkMode(context)
                    ? Colors.grey.shade800
                    : Colors.grey.shade100,
          ),
        ),

        const SizedBox(width: 14),

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
                children: [
                  CLabelValue(
                    label: "color",
                    stringValues: ["Blue"],
                    fontType: CFontTypes.bodySmall,
                  ),
                  const SizedBox(width: 10),
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
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
