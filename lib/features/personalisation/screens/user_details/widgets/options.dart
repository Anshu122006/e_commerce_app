import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CProfileOption extends StatelessWidget {
  const CProfileOption({
    super.key,
    this.icon,
    required this.optionKey,
    required this.optionVal,
    this.onPressed,
  });

  final String optionKey, optionVal;
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CPaddings.sm),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  optionKey,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  optionVal,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(flex: 1, child: Icon(icon, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
