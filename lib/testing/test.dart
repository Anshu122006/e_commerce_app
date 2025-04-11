import 'package:e_commerce_app/testing/shopping/screens/appbar/appbar.dart';
import 'package:e_commerce_app/testing/shopping/screens/horizontal_scroll/category_list/categories.dart';
import 'package:e_commerce_app/testing/shopping/screens/horizontal_scroll/category_list/data_model.dart';
import 'package:e_commerce_app/testing/shopping/screens/horizontal_scroll/types_list/types_list.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  IconData _notifyIcon = Icons.notifications_none_outlined;
  IconData _favouriteIcon = Icons.favorite_border_outlined;
  bool _notifySelected = false;
  bool _favouriteSelected = false;

  late List<Widget> _actions;
  final List<String> _stringList = ["All", "Men", "Women", "Kids"];
  final List<ItemData> _dataList = [
    ItemData("assets/images/categories/food.png", "Food"),
    ItemData("assets/images/categories/stationery.png", "Stationery"),
    ItemData("assets/images/categories/cosmetics.png", "Cosmetics"),
    ItemData("assets/images/categories/accessories.png", "Accessories"),
    ItemData("assets/images/categories/clothing.png", "Clothing"),
  ];

  @override
  Widget build(BuildContext context) {
    _actions = [
      Padding(
        padding: const EdgeInsets.all(2),
        child: IconButton(
          onPressed: () {
            setState(() {
              if (!_notifySelected) {
                _notifyIcon = Icons.notifications;
                _notifySelected = true;
              } else {
                _notifyIcon = Icons.notifications_none_outlined;
                _notifySelected = false;
              }
            });
          },
          icon: Icon(_notifyIcon, size: 28),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2),
        child: IconButton(
          onPressed: () {
            setState(() {
              if (!_favouriteSelected) {
                _favouriteIcon = Icons.favorite_rounded;
                _favouriteSelected = true;
              } else {
                _favouriteIcon = Icons.favorite_outline;
                _favouriteSelected = false;
              }
            });
          },
          icon: Icon(_favouriteIcon, size: 28),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2),
        child: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_outlined, size: 28)),
      ),
      SizedBox(width: 10),
    ];
    return Scaffold(
      body: Column(
        children: [
          CTestAppBar(
            showBackArrow: false,
            leadingImage: Image.asset("assets/images/icons/dn_icon.png"),
            adress: "IITI, India",
            actions: _actions,
            helperText: "Search item here",
          ),
          CTypes(stringList: _stringList),
          CCategoryList(dataList: _dataList),
        ],
      ),
    );
  }
}
