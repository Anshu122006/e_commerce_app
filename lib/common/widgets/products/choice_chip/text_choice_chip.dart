import 'package:flutter/material.dart';

class CTextChoiceChip extends StatelessWidget {
  const CTextChoiceChip({
    super.key,
    required this.selected,
    this.onSelected,
    required this.labelText,
  });

  final String labelText;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(labelText, style: Theme.of(context).textTheme.bodyMedium),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.grey.shade600),
      ),
    );
  }
}
