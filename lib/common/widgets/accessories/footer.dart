import 'package:e_commerce_app/common/widgets/buttons/circular_button.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CFooter extends StatelessWidget {
  const CFooter({super.key, required this.icons});

  final List<String> icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: CSizes.rowSpacingSmall,
      children: [
        for(var icon in icons) CCircularButton(image: icon),
      ],
    );
  }
}
