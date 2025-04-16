import 'package:e_commerce_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CFormCheckBox extends StatelessWidget {
  const CFormCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
              scale: CScales.l,
              child: Checkbox(value: true, onChanged: (isChecked) {}),
            ),
            Text(
              CTexts.rememberMe,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        TextButton(
          onPressed: () => Get.to(() => ForgotPassword()),
          child: Text(
            CTexts.forgotPassword,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
