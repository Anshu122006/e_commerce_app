import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
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
    this.isAnimation = false,
    this.looping = false,
  });

  final String? image, title, subtitle, buttonText;
  final VoidCallback onClose, onContinue;
  final VoidCallback? onClick;
  final bool isAnimation;
  final bool looping;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    Widget notifyImage =
        image != null
            ? SizedBox(
              width: CDeviceHelper.getScreenHeight(context) * 0.7,
              height: CDeviceHelper.getScreenHeight(context) * 0.5,
              child: Image(image: AssetImage(image!), fit: BoxFit.contain),
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
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.grey.shade800,
                  ),
                ),
              ),
            )
            : SizedBox();

    return Scaffold(
      appBar: CAppBar(
        actions: [
          IconButton(
            onPressed: onClose,
            icon: Icon(
              Icons.close,
              color:
                  CDeviceHelper.isDarkMode(context)
                      ? Colors.white
                      : Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            notifyImage,
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(subtitle ?? '', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onContinue,
                child: Text(CTexts.continueText),
              ),
            ),
            const SizedBox(height: 40),
            button,
          ],
        ),
      ),
    );
  }
}
