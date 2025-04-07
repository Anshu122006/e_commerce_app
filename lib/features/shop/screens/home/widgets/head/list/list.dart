import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/head/list/list_item.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CHeaderList extends StatelessWidget {
  const CHeaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CHeading(
              title: CTexts.pupularCategories,
              color: Colors.white,
              family: "Pacifico",
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
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
