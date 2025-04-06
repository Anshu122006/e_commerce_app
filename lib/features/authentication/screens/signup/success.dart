import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CNotificationScreen(
      image: CImages.success,
      title: CTexts.successTitle,
      subtitle: CTexts.successSubtitle,
      onContinue: () => Get.to(LoginScreen()),
      onClose: () => Get.offAll(VerifyEmail()),
    );
  }
}
