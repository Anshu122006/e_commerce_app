import 'package:e_commerce_app/common/widgets/accessories/footer.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/form/form.dart';
import 'package:e_commerce_app/common/widgets/accessories/text_divider.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/header/header.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: CPaddings.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: CSizes.columnSpacingMid,
            children: [
              CLoginHeader(),
              CLoginForm(),
              CTextDivider(text: CTexts.orSignInWith),
              CFooter(icons: [CImages.googleIcon, CImages.facebookIcon]),
            ],
          ),
        ),
      ),
    );
  }
}
