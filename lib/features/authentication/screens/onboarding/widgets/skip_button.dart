import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class COnboardingSkipButton extends StatelessWidget {
  const COnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return ElevatedButton(
      onPressed: () {
        OnboardingController.instance.skipPage();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isDark ? CColors.white : CColors.black,
        foregroundColor: isDark ? CColors.black : CColors.white,
      ),
      child: Text(CTexts.skipText),
    );
  }
}
