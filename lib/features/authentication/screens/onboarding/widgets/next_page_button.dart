import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class COnboardingNextButton extends StatelessWidget {
  const COnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return ElevatedButton(
      onPressed: () {
        OnboardingController.instance.nextPage();
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: isDark ? CColors.white : CColors.black,
        iconColor: isDark ? CColors.black : CColors.white,
        iconSize: CIconSizes.md,
      ),
      child: Icon(Icons.arrow_forward),
    );
  }
}
