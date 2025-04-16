import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CSearchbar extends StatelessWidget {
  const CSearchbar({
    super.key,
    this.filled = true,
    required this.labelText,
    this.icon = Icons.search,
    this.borderColor,
    this.fillColor,
    this.height = 50,
  });

  final bool filled;
  final String labelText;
  final double height;
  final IconData icon;
  final Color? borderColor;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height * 7,
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: CPaddings.md,
        vertical: CPaddings.sm,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? CColors.grey),
        borderRadius: BorderRadius.circular(height * 0.5),
        color: filled ? fillColor ?? CColors.white : CColors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: CSizes.rowSpacingMid,
        children: [
          Expanded(
            flex: 1,
            child: Icon(icon, color: CColors.grey, size: height * 0.5),
          ),
          Expanded(
            flex: 9,
            child: TextField(
              cursorHeight: height * 0.4,
              cursorColor: CColors.grey,
              decoration: InputDecoration(
                hintText: "Search in store",
                hintStyle: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(fontStyle: FontStyle.italic),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                filled: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
