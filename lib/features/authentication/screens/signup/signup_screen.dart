import 'package:e_commerce_app/common/widgets/accessories/text_divider.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/checkbox.dart';
import 'package:e_commerce_app/common/widgets/accessories/footer.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/form.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: CPaddings.mainScreen),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: CSizes.columnSpacingMid,
            children: [
              Text(
                CTexts.signupHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: CSizes.columnSpacingMid),

              CSignupForm(),

              CSignupCheckbox(),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => VerifyEmail()),
                  child: Text(CTexts.createAccount),
                ),
              ),

              CTextDivider(text: CTexts.orSignUpWith),

              CFooter(icons: [CImages.googleIcon, CImages.facebookIcon]),
            ],
          ),
        ),
      ),
    );
  }
}
