import 'package:e_commerce_app/common/widgets/choice_chip/color_choice_chip.dart';
import 'package:e_commerce_app/common/widgets/choice_chip/text_choice_chip.dart';
import 'package:e_commerce_app/common/widgets/dividers/text_divider.dart';
import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_middle/widgets/choice_list.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_middle/widgets/variations.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_lower/body_lower.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class CBodyMiddle extends StatelessWidget {
  const CBodyMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CVariations(),
        const SizedBox(height: 10),
        CChoiceList(
          label: "Colors",
          spacing: 0,
          choiceList: [
            CColorChoiceChip(
              selected: true,
              onSelected: (value) {},
              color: Colors.blue,
            ),
            CColorChoiceChip(
              selected: false,
              onSelected: (value) {},
              color: Colors.red,
            ),
            CColorChoiceChip(
              selected: false,
              onSelected: (value) {},
              color: Colors.yellow,
            ),
          ],
        ),

        CChoiceList(
          label: "Colors",
          choiceList: [
            CTextChoiceChip(
              selected: true,
              labelText: "small",
              onSelected: (value) {},
            ),
            CTextChoiceChip(
              selected: false,
              labelText: "medium",
              onSelected: (value) {},
            ),
            CTextChoiceChip(
              selected: false,
              labelText: "large",
              onSelected: (value) {},
            ),
          ],
        ),

        const SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Checkout", style: TextStyle(color: Colors.white)),
          ),
        ),

        const SizedBox(height: 20),

        CHeading(title: "Description"),

        const SizedBox(height: 10),

        ReadMoreText(
          "These are very cool nike shoes, you have got to try them out! Don't miss out,, buy one now and save upto 70% and also become the coolest person in the room!   ",
          trimLength: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "show more",
          trimExpandedText: "show less",
          style: Theme.of(context).textTheme.bodySmall,
          moreStyle: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(fontWeightDelta: 3),
          lessStyle: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(fontWeightDelta: 3),
        ),

        CTextDivider(),

        Row(
          children: [
            Expanded(flex: 8, child: CHeading(title: "Reviews (434)")),
            Expanded(
              flex: 2,
              child: IconButton(
                onPressed: () => Get.to(() => CReviewsScreen()),
                icon: Icon(Iconsax.arrow_right_3, size: 22),
              ),
            ),
          ],
        ),

        const SizedBox(height: 60),
      ],
    );
  }
}
