import 'package:e_commerce_app/features/products/screens/widget/body_middle/body_middle.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_upper/body_upper.dart';
import 'package:flutter/material.dart';

class CProductDetailBody extends StatelessWidget {
  const CProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [CBodyUpper(), const SizedBox(height: 20), CBodyMiddle()],
        ),
      ),
    );
  }
}
