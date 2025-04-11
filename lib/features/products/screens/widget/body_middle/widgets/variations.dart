import 'package:e_commerce_app/common/widgets/label_value.dart';
import 'package:e_commerce_app/common/widgets/product_price.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CVariations extends StatelessWidget {
  const CVariations({super.key});

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      width: double.infinity,
      showBorder: false,
      backgroundColor:
          CDeviceHelper.isDarkMode(context)
              ? Colors.grey.shade700
              : Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Variation",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CLabelValue(
                      label: "Price",
                      values: [
                        CProductPrice(
                          price: 21.0,
                          isCrossed: true,
                          scale: 0.75,
                        ),
                        CProductPrice(
                          price: 21.0,
                          isCrossed: false,
                          scale: 0.7,
                        ),
                      ],
                    ),

                    CLabelValue(label: "Status", stringValues: ["In Stock"]),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              "This is the description of the product and it can get upto 4 lines",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
