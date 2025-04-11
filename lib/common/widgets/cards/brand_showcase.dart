import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/cards/brand_card.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CBrandShowCase extends StatelessWidget {
  const CBrandShowCase({super.key, required this.images});

  final List<String> images;

  Widget _toProductImageWidget(String image) {
    return Expanded(
      child: CRoundedImage(
        // backgroundColor: Colors.grey.shade50,
        image: image,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CBrandCard(brandName: "Nike", image: CImages.shoeIcon, count: 356, showBorder: false),
            const SizedBox(height: 10),
            Row(children: images.map(_toProductImageWidget).toList()),
          ],
        ),
      ),
    );
  }
}
