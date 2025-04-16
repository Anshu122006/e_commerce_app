import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CSignupCheckbox extends StatelessWidget {
  const CSignupCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    final Color colorNormal = isDark ? CColors.lightGrey : CColors.darkGrey;
    final Color colorUnderlined = isDark ? CColors.dark : CColors.blue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: CScales.l,
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
                  fontWeightDelta: 3,
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
                  fontWeightDelta: 3,
                  decoration: TextDecoration.underline,
                  decorationColor: colorUnderlined,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
