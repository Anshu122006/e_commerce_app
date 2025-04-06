import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/success.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return CNotificationScreen(
      image: CImages.verifyEmail,
      title: CTexts.verifyEmailTitle,
      subtitle: "newuser1823@gmail.com",
      buttonText: CTexts.resendEmail,
      onContinue: () => Get.off(SuccessScreen()),
      onClose: () => Get.offAll(SignupScreen()),
    );
  }
}
