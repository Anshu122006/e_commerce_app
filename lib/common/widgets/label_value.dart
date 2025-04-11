import 'package:flutter/material.dart';

class CLabelValue extends StatelessWidget {
  const CLabelValue({
    super.key,
    required this.label,
    this.stringValues,
    this.values,
    this.seperation = 6,
  });

  final String label;
  final List<String>? stringValues;
  final List<Widget>? values;
  final double seperation;

  _getList(BuildContext context) {
    List<Widget> valList = [];
    int l =
        values != null
            ? values!.length
            : stringValues != null
            ? stringValues!.length
            : 0;
    for (int i = 0; i < l; i++) {
      final item =
          values != null
              ? values![i]
              : Text(
                stringValues![i],
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(fontWeightDelta: 3),
              );
      valList.add(item);
      valList.add(SizedBox(width: seperation));
    }

    return valList;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: 14),
        Row(children: _getList(context)),
      ],
    );
  }
}
