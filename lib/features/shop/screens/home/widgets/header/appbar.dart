import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/common/widgets/buttons/cart_button.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/header/title.dart';
import 'package:flutter/material.dart';

class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CAppBar(
      showBackArrow: false,
      title: AppBarTitle(),
      actions: [CCartButton()],
    );
  }
}
