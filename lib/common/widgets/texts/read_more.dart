import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CReadMore extends StatelessWidget {
  const CReadMore({
    super.key,
    required this.text,
    this.labelColor,
    this.trimLines = 2,
  });

  final String text;
  final Color? labelColor;
  final int? trimLines;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 2,
      trimMode: TrimMode.Line,

      trimExpandedText: "   show less",
      trimCollapsedText: "show more",
      moreStyle: Theme.of(context).textTheme.bodyMedium!.apply(
        fontWeightDelta: 3,
        color: labelColor ?? Theme.of(context).primaryColor,
      ),
      lessStyle: Theme.of(context).textTheme.bodyMedium!.apply(
        fontWeightDelta: 3,
        color: labelColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
