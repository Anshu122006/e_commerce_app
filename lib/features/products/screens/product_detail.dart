import 'package:e_commerce_app/features/products/screens/widget/body.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_middle/widgets/add_to_cart.dart';
import 'package:e_commerce_app/features/products/screens/widget/header.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CProductDetailHeader(isDark: isDark),
            CProductDetailBody(),
          ],
        ),
      ),
      bottomNavigationBar: CAddToCart(),
    );
  }
}
