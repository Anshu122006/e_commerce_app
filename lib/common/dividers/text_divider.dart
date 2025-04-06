import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CTextDivider extends StatelessWidget {
  const CTextDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: isDark ? Colors.grey : Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 30,
                  endIndent: 10,
                ),
              ),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
              Expanded(
                child: Divider(
                  color: isDark ? Colors.grey : Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 10,
                  endIndent: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
