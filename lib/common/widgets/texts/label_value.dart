import 'package:e_commerce_app/common/decoration/font_types.dart';
import 'package:flutter/material.dart';

class CLabelValue extends StatelessWidget {
  const CLabelValue({
    super.key,
    required this.label,
    this.stringValues,
    this.values,
    this.seperation = 6,
    this.fontType = CFontTypes.bodyMedium,
  });

  final String label;
  final List<String>? stringValues;
  final List<Widget>? values;
  final double seperation;
  final CFontTypes fontType;

  TextStyle? _getTextStyle(BuildContext context) {
    switch (fontType) {
      case CFontTypes.bodySmall:
        return Theme.of(context).textTheme.bodySmall;
      case CFontTypes.bodyMedium:
        return Theme.of(context).textTheme.bodyMedium;
      case CFontTypes.bodyLarge:
        return Theme.of(context).textTheme.bodyLarge;
    }
  }

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
                style: _getTextStyle(context)!.apply(fontWeightDelta: 3),
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
        Text(label, style: _getTextStyle(context)),
        const SizedBox(width: 14),
        Row(children: _getList(context)),
      ],
    );
  }
}
