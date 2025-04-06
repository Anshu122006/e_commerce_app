import 'package:e_commerce_app/common/decoration/styles/shadow.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/grid_elements/parts/add_button.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/grid_elements/parts/discount_label.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/grid_elements/parts/fav_button.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/grid_elements/parts/product_desc.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/grid_elements/parts/product_image.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CVerticalItem extends StatelessWidget {
  const CVerticalItem({super.key, this.width, required this.id});

  final double? width;
  final int id;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  boxShadow: [
                    isDark ? CShadows.mildShadowDark : CShadows.mildShadowLight,
                  ],
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
