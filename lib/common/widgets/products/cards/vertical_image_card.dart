// import 'package:e_commerce_app/common/decoration/styles/shadow.dart';
import 'package:e_commerce_app/common/widgets/products/cards/parts/add_button.dart';
import 'package:e_commerce_app/common/widgets/products/cards/parts/discount_label.dart';
import 'package:e_commerce_app/common/widgets/products/cards/parts/fav_button.dart';
import 'package:e_commerce_app/common/widgets/products/cards/parts/product_desc.dart';
import 'package:e_commerce_app/common/widgets/products/cards/parts/product_image.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CVerticalImageCard extends StatelessWidget {
  const CVerticalImageCard({super.key, this.width = 200, required this.id});

  final double width;
  final int id;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        // width: width,
        // height: width * 2,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  // boxShadow: [isDark ? CShadows.mildShadowDark : CShadows.mildShadowLight],
                  borderRadius: BorderRadius.circular(20),
                  color: isDark ? Colors.grey.shade700 : Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CProductImage(image: CImages.shoes, discount: 25),
                    SizedBox(height: 10),
                    CProductDesc(
                      desc: "Blue Nike Air Shoes.",
                      brandName: "Nike",
                      price: 25.5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: 0, right: 0, child: CFavButton(id: id)),
            Positioned(top: 5, left: 5, child: CDiscountLabel(discount: 25)),
            Positioned(bottom: 0, right: 0, child: CAddButton(id: id)),
          ],
        ),
      ),
    );
  }
}
