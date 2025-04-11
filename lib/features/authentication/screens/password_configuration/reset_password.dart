import 'package:e_commerce_app/utils/constants/dimensions.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        actions: [IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(CImages.passwordSend),
                width: CDeviceHelper.getScreenWidth(context) * 0.8,
                height: CDeviceHelper.getScreenHeight(context) * 0.4,
              ),
              Text(CTexts.resetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              Text("newuser1823@gmail.com", style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: CDimensions.betweenItems),
              Text(
                CTexts.resetPasswordSubtitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.back(), child: Text(CTexts.doneText)),
              ),
              SizedBox(height: CDimensions.betweenItems),
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
