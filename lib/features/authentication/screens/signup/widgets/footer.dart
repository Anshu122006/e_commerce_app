import 'package:e_commerce_app/common/widgets/buttons/circular_button.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:flutter/material.dart';

class CSignupFooter extends StatelessWidget {
  const CSignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CCircularButton(image: CImages.googleIcon),
          CCircularButton(image: CImages.facebookIcon),
        ],
      ),
    );
  }
}
