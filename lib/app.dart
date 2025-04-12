// ignore_for_file: unused_import

import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:e_commerce_app/features/products/screens/product_detail.dart';
import 'package:e_commerce_app/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerce_app/global/navigation_menu/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "e-commerce app",
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      // home: Scaffold(
      //   body: Center(
      //     child: CRoundedImage(
      //       image: CImages.shoeIcon,
      //       backgroundColor: Colors.transparent,
      //     ),
      //   ),
      // ),
      home: CheckoutScreen(),
    );
  }
}
