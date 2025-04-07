import 'package:e_commerce_app/features/authentication/screens/login/widgets/footer/footer.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/form/form.dart';
import 'package:e_commerce_app/common/widgets/dividers/text_divider.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/header/header.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: CDeviceHelper.getScreenHeight(context),
        width: CDeviceHelper.getScreenWidth(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CLoginHeader(),
              CLoginForm(),
              CTextDivider(text: CTexts.orSignInWith,),
              CLoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
