import 'package:e_commerce_app/utils/constants/dimensions.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CNotificationScreen extends StatelessWidget {
  const CNotificationScreen({
    super.key,
    this.image,
    this.title,
    this.subtitle,
    this.buttonText,
    required this.onContinue,
    required this.onClose,
    this.onClick,
  });

  final String? image, title, subtitle, buttonText;
  final VoidCallback onClose, onContinue;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    Widget animationImage =
        image != null
            ? Image(
              image: AssetImage(image!),
              width: CDeviceHelper.getScreenHeight(context) * 0.7,
              height: CDeviceHelper.getScreenHeight(context) * 0.5,
            )
            : SizedBox();
    Widget button =
        buttonText != null
            ? SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: onClick ?? () {},
                child: Text(
                  buttonText!,
                  style: TextStyle(color: isDark ? Colors.white : Colors.grey.shade800),
                ),
              ),
            )
            : SizedBox();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        actions: [IconButton(onPressed: onClose, icon: Icon(Icons.close))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              animationImage,
              Text(title ?? '', style: Theme.of(context).textTheme.headlineMedium),
              Text(subtitle ?? '', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onContinue, child: Text(CTexts.continueText)),
              ),
              SizedBox(height: CDimensions.betweenItems),
              button,
            ],
          ),
        ),
      ),
    );
  }
}
