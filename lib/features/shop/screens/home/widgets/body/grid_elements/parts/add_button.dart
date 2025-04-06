import 'package:e_commerce_app/features/shop/controller/product_list_controller.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

class CAddButton extends StatelessWidget {
  const CAddButton({super.key, required this.id, this.count = 0});

  final int id;
  final int count;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    final Color backgroundColor = isDark ? Colors.grey.shade200 : Colors.black;
    final Color foregroundColor = isDark ? Colors.black : Colors.white;
    final double size = 26;
    final ProductListController controller = ProductListController.instance;

    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: backgroundColor,
      ),
      child: Center(
        child: Obx(
          () => IconButton(
            onPressed: () {
              controller.productList[id].count.value++;
            },
            icon:
                controller.productList[id].count.value > 0
                    ? Text(
                      "${controller.productList[id].count.value}",
                      style: TextStyle(color: foregroundColor, fontSize: size),
                    )
                    : Icon(Iconsax.add, color: foregroundColor, size: size),
          ),
        ),
      ),
    );
  }
}
