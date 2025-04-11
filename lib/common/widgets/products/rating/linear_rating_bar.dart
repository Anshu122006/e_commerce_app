import 'package:flutter/material.dart';

class CLinearRatingBar extends StatelessWidget {
  const CLinearRatingBar({super.key, required this.index, required this.value});

  final int index;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text("$index", style: Theme.of(context).textTheme.bodySmall),
        ),
        Expanded(
          flex: 12,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            borderRadius: BorderRadius.circular(6),
            backgroundColor: Colors.grey.shade200,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
