import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.type,
    required this.isActive,
    required this.height,
    required this.borderWidth,
  });
  final String type;
  final bool isActive;
  final double height;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height - borderWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              type,
              style: TextStyle(
                fontSize: 14,
                color: isActive ? Colors.red : Colors.black,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          isActive ? Container(height: borderWidth * 1.5, color: Colors.red) : Container(height: 0),
        ],
      ),
    );
  }
}
