import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CAddToCart extends StatelessWidget {
  const CAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
        color:
            CDeviceHelper.isDarkMode(context)
                ? Colors.grey.shade800
                : Colors.grey.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade400,
                  foregroundColor: Colors.black,
                ),
                icon: Icon(Iconsax.minus),
              ),
              const SizedBox(width: 10),
              Text("2", style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                icon: Icon(Iconsax.add),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            child: Text("Add to cart"),
          ),
        ],
      ),
    );
  }
}
