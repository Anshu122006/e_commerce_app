import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/searchbar.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/brand_list_item.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CStoreAppbar extends StatelessWidget {
  const CStoreAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      floating: true,
      backgroundColor:
          CDeviceHelper.isDarkMode(context) ? Colors.black : Colors.white,
      expandedHeight: 400,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 40),
            CSearchbar(labelText: "Search in store", filled: false),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CHeading(
                title: "Featured brands",
                buttonText: "View all",
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            CGridLayout(
              itemCount: 4,
              mainAxisExtent: 70,
              builder: (_, index) {
                return CBrandListItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
