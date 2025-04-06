import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class COnboardingDotNavigator extends StatelessWidget {
  const COnboardingDotNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = OnboardingController.instance;
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Positioned(
      bottom: 50,
      left: 30,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? Colors.white : Colors.black,
          radius: 6,
          dotHeight: 6,
        ),
      ),
    );
  }
}
