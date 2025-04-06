import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class COnboardingSkipButton extends StatelessWidget {
  const COnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Positioned(
      top: 40,
      right: 15,
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.skipPage();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isDark ? Colors.white : Colors.black,
          foregroundColor: isDark ? Colors.black : Colors.white,
        ),
        child: Text("Skip"),
      ),
    );
  }
}
