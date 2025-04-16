import 'package:e_commerce_app/features/shop/screens/home/widgets/header/list_item.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CHeaderList extends StatelessWidget {
  const CHeaderList({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: CPaddings.mainScreen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: height,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              separatorBuilder:
                  (_, __) => SizedBox(width: CSizes.rowSpacingMid),
              itemBuilder: (_, index) {
                return CListItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
