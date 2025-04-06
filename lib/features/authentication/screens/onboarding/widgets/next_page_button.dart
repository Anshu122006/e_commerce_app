import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class COnboardingNextButton extends StatelessWidget {
  const COnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return Positioned(
      bottom: 40,
      right: 20,
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: isDark ? Colors.white : Colors.black,
          iconColor: isDark ? Colors.black : Colors.white,
          iconSize: 26,
        ),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
