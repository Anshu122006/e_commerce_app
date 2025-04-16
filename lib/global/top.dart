import 'package:e_commerce_app/common/widgets/buttons/cart_button.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';

class CAppBarTop extends StatelessWidget {
  const CAppBarTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CTexts.appBarSubtitle,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: Colors.white,
                fontFamily: "Pacifico",
                letterSpacingFactor: 1.5,
              ),
            ),
            Text(
              CTexts.appBarTitle,
              style: Theme.of(context).textTheme.titleMedium!.apply(
                color: Colors.white,
                fontFamily: "Pacifico",
                letterSpacingFactor: 4,
              ),
            ),
          ],
        ),
        CCartButton()
      ],
    );
  }
}
