import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CBrandName extends StatelessWidget {
  const CBrandName({
    super.key,
    required this.brandName,
    this.isVerified = true,
  });

  final String brandName;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(child: Text(brandName, overflow: TextOverflow.ellipsis)),
        SizedBox(width: 3),
        isVerified
            ? Icon(
              Iconsax.verify5,
              color: Theme.of(context).primaryColor,
              size: 18,
            )
            : SizedBox(),
      ],
    );
  }
}
