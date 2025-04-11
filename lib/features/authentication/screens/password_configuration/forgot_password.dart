import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/dimensions.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(CTexts.forgotPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              Text(CTexts.forgotPasswordSubtitle, style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.send, color: Colors.grey.shade700),
                    labelText: CTexts.email,
                  ),
                ),
              ),
              SizedBox(height: CDimensions.inboxDistance),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(ResetPassword()),
                  child: Text(CTexts.submitText),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    CTexts.resendEmail,
                    style: TextStyle(color: isDark ? Colors.white : Colors.grey.shade700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
