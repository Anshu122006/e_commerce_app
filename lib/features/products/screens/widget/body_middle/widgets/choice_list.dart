import 'package:e_commerce_app/common/widgets/texts/heading.dart';
import 'package:flutter/material.dart';

class CChoiceList extends StatelessWidget {
  const CChoiceList({super.key, required this.label, required this.choiceList, this.spacing = 8});

  final String label;
  final List<Widget> choiceList;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CHeading(title: label),

        const SizedBox(height: 10),

        Wrap(spacing: spacing, children: choiceList),

        const SizedBox(height: 10),
      ],
    );
  }
}
