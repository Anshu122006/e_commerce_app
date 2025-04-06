import 'package:flutter/material.dart';

class CCircularButton extends StatelessWidget {
  const CCircularButton({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade700),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image(height: 40, width: 40, image: AssetImage(image)),
      ),
    );
  }
}
