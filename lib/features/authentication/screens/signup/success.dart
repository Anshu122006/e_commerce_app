import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CNotificationScreen(
      image: CImages.success,
      title: CTexts.accountCreatedTitle,
      subtitle: CTexts.accountCreatedSubtitle,
      onContinue: () => Get.to(() => LoginScreen()),
      onClose: () => Get.offAll(() => LoginScreen()),
    );
  }
}
