import 'package:e_commerce_app/common/widgets/dividers/text_divider.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/checkbox.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/footer.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/form.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/title.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CSignupTitle(),
              CSignupForm(),
              CSignupCheckbox(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(VerifyEmail()),
                  child: Text(CTexts.createAccount),
                ),
              ),
              CTextDivider(text: CTexts.orSignInWith),
              CSignupFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
