import 'package:e_commerce_app/utils/constants/dimensions.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CLoginHeader extends StatelessWidget {
  const CLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: CDimensions.statusBarPadding),
            Transform.translate(
              offset: Offset(-10, 0),
              child: Image(
                image: AssetImage(CImages.splashLogo),
                height: CDimensions.iconImageHeight,
                width: CDimensions.iconImageWidth,
                fit: BoxFit.contain,
              ),
            ),
            Text(CTexts.loginHeaderTitle, style: Theme.of(context).textTheme.titleMedium),
            Text(CTexts.loginHeaderSubtitle, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
