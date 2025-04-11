import 'package:e_commerce_app/global/navigation_menu/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationMenuController controller = Get.put(NavigationMenuController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.setCurrentPage,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: "Store"),
            NavigationDestination(icon: Icon(Icons.favorite_outline), label: "Wishlist"),
            NavigationDestination(icon: Icon(Icons.account_circle_outlined), label: "Account"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
