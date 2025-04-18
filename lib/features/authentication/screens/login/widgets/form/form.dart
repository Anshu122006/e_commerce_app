import 'package:e_commerce_app/common/widgets/input_fields/form_input_field.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/form/checkbox.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_commerce_app/global/navigation_menu/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/dimensions.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CLoginForm extends StatelessWidget {
  const CLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Form(
        child: Column(
          children: [
            CFormInputField(labelText: CTexts.email, prefixIcon: Icons.send),
            const SizedBox(height: CDimensions.inboxDistance),
            CFormInputField(
              labelText: CTexts.forgotPassword,
              prefixIcon: Icons.password,
              suffixIcon: Icons.remove_red_eye_outlined,
              obscureText: true,
            ),
            const SizedBox(height: CDimensions.inboxDistance),
            CFormCheckBox(),
            const SizedBox(height: CDimensions.inboxDistance),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: Text(CTexts.signin),
              ),
            ),
            const SizedBox(height: CDimensions.betweenItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignupScreen()),
                child: Text(CTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
