import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';

class CSignupTitle extends StatelessWidget {
  const CSignupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(CTexts.signupHeading, style: Theme.of(context).textTheme.headlineMedium),
    );
  }
}
