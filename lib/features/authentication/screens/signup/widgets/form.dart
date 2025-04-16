import 'package:e_commerce_app/common/widgets/text_fields/form_input_field.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';

class CSignupForm extends StatelessWidget {
  const CSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: CSizes.columnSpacingSmall,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CFormInputField(
                  prefixIcon: Icons.account_circle_outlined,
                  labelText: CTexts.firstName,
                  filled: false,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: CFormInputField(
                  prefixIcon: Icons.account_circle_outlined,
                  labelText: CTexts.lastName,
                  filled: false,
                ),
              ),
            ],
          ),
          CFormInputField(
            prefixIcon: Icons.account_circle_outlined,
            labelText: CTexts.userName,
            filled: false,
          ),
          CFormInputField(prefixIcon: Icons.email_outlined, labelText: CTexts.email, filled: false),
          CFormInputField(prefixIcon: Icons.phone, labelText: CTexts.phone, filled: false),
          CFormInputField(
            prefixIcon: Icons.password,
            labelText: CTexts.password,
            suffixIcon: Icons.remove_red_eye_outlined,
            obscureText: true,
            filled: false,
          ),
        ],
      ),
    );
  }
}
