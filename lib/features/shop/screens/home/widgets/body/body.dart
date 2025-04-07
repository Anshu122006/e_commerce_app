import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/features/shop/controller/product_list_controller.dart';
import 'package:e_commerce_app/common/widgets/cards/vertical_image_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CHomeBody extends StatelessWidget {
  const CHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductListController controller = Get.put(ProductListController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CHeading(title: "Popular Products", buttonText: "View all"),
          ),
          const SizedBox(height: 20),
          CGridLayout(
            itemCount: 6,
            builder: (_, index) {
              controller.addProduct(false, 0);
              return CVerticalImageCard(id: index);
            },
          ),
        ],
      ),
    );
  }
}
