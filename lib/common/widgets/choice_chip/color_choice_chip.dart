import 'package:flutter/material.dart';

class CColorChoiceChip extends StatelessWidget {
  const CColorChoiceChip({
    super.key,
    required this.selected,
    this.onSelected,
    required this.color,
  });

  final bool selected;
  final void Function(bool)? onSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: SizedBox(),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: !selected ? SizedBox() : null,
      shape: CircleBorder(side: BorderSide(color: Colors.grey.shade600)),
      labelPadding: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      selectedColor: color,
      backgroundColor: color,
    );
  }
}
