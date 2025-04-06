import 'package:e_commerce_app/common/texts/brand_name.dart';
import 'package:flutter/material.dart';
class CProductDesc extends StatelessWidget {
  const CProductDesc({
    super.key,
    required this.desc,
    required this.brandName,
    required this.price,
  });

  final String desc;
  final String brandName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, bottom: 14),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "\$$price",
              style: Theme.of(context).textTheme.headlineLarge!.apply(
                fontFamily: "Pacifico",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
