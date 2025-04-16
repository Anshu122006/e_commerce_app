import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Scaffold(
      appBar: CAppBar(
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: CPaddings.mainScreen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(CImages.passwordSend),
              width: CDeviceHelper.getScreenWidth(context) * 0.8,
              height: CDeviceHelper.getScreenHeight(context) * 0.4,
            ),

            Text(
              CTexts.resetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "pandamon2441@gmail.com",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            SizedBox(height: CSizes.columnSpacingSmall),

            Text(
              CTexts.resetPasswordSubtitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: CSizes.columnSpacingLarge),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: Text(CTexts.doneText),
              ),
            ),
            SizedBox(height: CSizes.columnSpacingSmall),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  CTexts.resendEmail,
                  style: TextStyle(
                    color: isDark ? CColors.white : CColors.darkGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
