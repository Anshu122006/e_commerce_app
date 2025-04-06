import 'package:e_commerce_app/testing/shopping/screens/horizontal_scroll/types_list/list_item.dart';
import 'package:flutter/material.dart';

class CTypes extends StatefulWidget {
  const CTypes({super.key, required this.stringList});
  final List<String> stringList;

  @override
  State<CTypes> createState() => _CTypesState();
}

class _CTypesState extends State<CTypes> {
  final double borderWidth = 1;
  final double height = 40;
  int _activeIndex = 0;

  _getItemsList(List<String> stringList) {
    List<Widget> itemsList = [];

    for (int i = 0; i < stringList.length; i++) {
      itemsList.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _activeIndex = i;
              });
            },

            child: ListItem(
              type: stringList[i],
              isActive: i == _activeIndex,
              height: height,
              borderWidth: borderWidth,
            ),
          ),
        ),
      );
    }
    return itemsList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 247, 255, 247),
      height: height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _getItemsList(widget.stringList),
          ),
          Container(height: borderWidth, color: Colors.grey),
        ],
      ),
    );
  }
}
