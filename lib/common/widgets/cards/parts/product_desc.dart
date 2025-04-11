import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_name.dart';
import 'package:flutter/material.dart';

class CProductDesc extends StatelessWidget {
  const CProductDesc({super.key, required this.desc, required this.brandName, required this.price});

  final String desc;
  final String brandName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      padding: EdgeInsets.only(left: 10, bottom: 14),
      radius: 20,
      showBorder: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            desc,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          CBrandName(brandName: brandName),
          // Spacer(flex: 1),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headlineLarge!.apply(fontFamily: "Pacifico"),
          ),
        ],
      ),
    );
  }
}
