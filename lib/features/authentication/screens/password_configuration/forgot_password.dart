import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CAppBar(
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(CPaddings.mainScreen),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CTexts.forgotPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: CSizes.columnSpacingSmall),
              Text(
                CTexts.forgotPasswordSubtitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),

              SizedBox(height: CSizes.columnSpacingLarge),
              SizedBox(height: CSizes.columnSpacingLarge),

              SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.send, color: CColors.darkGrey),
                    labelText: CTexts.email,
                  ),
                ),
              ),

              SizedBox(height: CSizes.columnSpacingLarge),
              SizedBox(height: CSizes.columnSpacingLarge),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => ResetPassword()),
                  child: Text(CTexts.submitText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
