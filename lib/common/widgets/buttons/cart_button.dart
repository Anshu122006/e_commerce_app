import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CCartButton extends StatelessWidget {
  const CCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 28,
              color: CDeviceHelper.isDarkMode(context) ? Colors.white : Colors.grey.shade800,
            ),
          ),
          Positioned(
            right: 4,
            top: 4,
            child: CRoundedContainer(
              isCircle: true,
              radius: 10,
              backgroundColor: Colors.green,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
