import 'package:e_commerce_app/testing/shopping/screens/horizontal_scroll/category_list/data_model.dart';
import 'package:e_commerce_app/testing/shopping/screens/horizontal_scroll/category_list/list_item.dart';
import 'package:flutter/material.dart';

class CCategoryList extends StatefulWidget {
  const CCategoryList({super.key, required this.dataList});
  final List<ItemData> dataList;

  @override
  State<CCategoryList> createState() => _CCategoryListState();
}

class _CCategoryListState extends State<CCategoryList> {
  int _activeIndex = 0;

  _getItemList() {
    List<Widget> itemList = [];

    for (int i = 0; i < widget.dataList.length; i++) {
      itemList.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _activeIndex = i;
            });
          },
          child: ListItem(
            url: widget.dataList[i].url,
            name: widget.dataList[i].name,
            isActive: i == _activeIndex,
          ),
        ),
      );
    }

    return itemList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      width: double.infinity,
      color: Colors.transparent,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: _getItemList()),
      ),
    );
  }
}
