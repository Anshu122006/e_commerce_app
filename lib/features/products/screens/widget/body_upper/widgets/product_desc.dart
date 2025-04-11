import 'package:flutter/material.dart';

class CProductDesc extends StatelessWidget {
  const CProductDesc({super.key, required this.desc});

  final String desc;

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.left,
    );
  }
}
