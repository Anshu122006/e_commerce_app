import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CSignupCheckbox extends StatelessWidget {
  const CSignupCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    final Color colorNormal =
        isDark ? Colors.grey.shade200 : Colors.grey.shade600;
    final Color colorUnderlined = isDark ? Colors.grey.shade600 : Colors.blue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 1.2,
            child: Checkbox(value: true, onChanged: (isChecked) {}),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "${CTexts.iAgreeTo} ",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.apply(color: colorNormal),
                ),
                TextSpan(
                  text: "${CTexts.privacyPolicy} ",
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: colorUnderlined,
                    fontWeightDelta: 10,
                    decoration: TextDecoration.underline,
                    decorationColor: colorUnderlined,
                  ),
                ),
                TextSpan(
                  text: "${CTexts.and} ",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.apply(color: colorNormal),
                ),
                TextSpan(
                  text: "${CTexts.termsOfUse} ",
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: colorUnderlined,
                    fontWeightDelta: 10,
                    decoration: TextDecoration.underline,
                    decorationColor: colorUnderlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
