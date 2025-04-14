import 'package:flutter/material.dart';

class CSearchbar extends StatelessWidget {
  const CSearchbar({
    super.key,
    this.filled = true,
    required this.labelText,
    this.icon = Icons.search,
    this.borderColor,
    this.fillColor,
  });

  final bool filled;
  final String labelText;
  final IconData icon;
  final Color? borderColor;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? Colors.grey.shade400),
        borderRadius: BorderRadius.circular(18),
        color: filled ? fillColor ?? Colors.grey.shade50 : Colors.transparent,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(icon, color: borderColor),
            ),
            Text(
              labelText,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.apply(color: borderColor, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
