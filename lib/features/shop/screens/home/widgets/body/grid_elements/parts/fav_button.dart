import 'package:e_commerce_app/features/shop/controller/product_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CFavButton extends StatelessWidget {
  const CFavButton({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final ProductListController controller = ProductListController.instance;
    final List<IconData> icons = [Iconsax.heart, Iconsax.heart5];
    return IconButton(
      onPressed: () {
        controller.productList[id].isFav.value =
            !controller.productList[id].isFav.value;
      },
      icon: Obx(
        () => Icon(
          icons[controller.productList[id].isFav.value ? 1 : 0],
          color: Colors.red.shade400,
          size: 32,
        ),
      ),
    );
  }
}
