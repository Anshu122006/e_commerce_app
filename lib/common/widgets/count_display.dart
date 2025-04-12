import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CCountDisplay extends StatelessWidget {
  const CCountDisplay({
    super.key,
    this.textColor,
    this.removeBackColor,
    this.removeTextColor,
    this.addBackColor,
    this.addTextColor,
    this.scale = 1,
  });

  final Color? removeBackColor;
  final Color? removeTextColor;
  final Color? addBackColor;
  final Color? addTextColor;
  final Color? textColor;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},

          style: IconButton.styleFrom(
            backgroundColor: removeBackColor ?? Colors.grey.shade400,
            foregroundColor: removeTextColor ?? Colors.black,
          ),
          constraints: BoxConstraints(
            maxHeight: 60 * scale,
            maxWidth: 60 * scale,
          ),
          icon: Icon(Iconsax.minus, size: 24 * scale),
        ),
        SizedBox(width: 10 * scale),
        Text(
          "2",
          style: Theme.of(context).textTheme.headlineSmall!.apply(
            color: textColor,
            fontSizeFactor: scale,
          ),
        ),
        SizedBox(width: 10 * scale),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: addBackColor ?? Colors.black,
            foregroundColor: addTextColor ?? Colors.white,
          ),
          constraints: BoxConstraints(
            maxHeight: 60 * scale,
            maxWidth: 60 * scale,
          ),
          icon: Icon(Iconsax.add, size: 24 * scale),
        ),
      ],
    );
  }
}
