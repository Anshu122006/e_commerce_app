import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.url, required this.name, required this.isActive});
  final String url;
  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(url, height: 80, width: 80, fit: BoxFit.fill),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              color: isActive ? Colors.red : Colors.grey.shade800,
              fontWeight: isActive ? FontWeight.w500 : FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
