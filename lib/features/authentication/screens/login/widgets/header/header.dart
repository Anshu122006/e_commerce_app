import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';

class CLoginHeader extends StatelessWidget {
  const CLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: CPaddings.statusBar),
          Transform.translate(
            offset: Offset(-CSizes.xsm, 0),
            child: Image(
              image: AssetImage(CImages.splashLogo),
              height: CSizes.iconImageHeight,
              width: CSizes.iconImageWidth,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            CTexts.loginHeaderTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            CTexts.loginHeaderSubtitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
