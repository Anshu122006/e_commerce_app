import 'package:e_commerce_app/common/widgets/buttons/cart_button.dart';
import 'package:e_commerce_app/common/widgets/text_fields/searchbar.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/header.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/font_data.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, __) {
            return [
              SliverPersistentHeader(
                pinned: true,
                delegate: _SearchbarDelegate(
                  searchbar: CSearchbar(labelText: "Search in store"),
                ),
              ),

              CStoreHeader(),

              SliverPersistentHeader(
                pinned: true,
                delegate: _TabBarDelegate(
                  TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(child: Text("Clothing")),
                      Tab(child: Text("Food")),
                      Tab(child: Text("Stationery")),
                      Tab(child: Text("Sports")),
                      Tab(child: Text("Shoes")),
                      Tab(child: Text("Grooming")),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CCategoryTab(),
              CCategoryTab(),
              CCategoryTab(),
              CCategoryTab(),
              CCategoryTab(),
              CCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  _TabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: CDeviceHelper.isDarkMode(context) ? CColors.dark : CColors.light,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) => false;
}

class _SearchbarDelegate extends SliverPersistentHeaderDelegate {
  // ignore: unused_element_parameter
  _SearchbarDelegate({required this.searchbar, this.height = 150});

  final double height;
  final Widget searchbar;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: CPaddings.xxsm,
          right: CPaddings.xxsm,
          top: CPaddings.xxl,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          spacing: CSizes.columnSpacingSmall,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: CPaddings.l),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Store",
                    style: Theme.of(context).textTheme.headlineSmall!.apply(
                      color: CColors.white,
                      fontFamily: CFontFamily.pacifico,
                    ),
                  ),
                  CCartButton(),
                ],
              ),
            ),
            searchbar,
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant _SearchbarDelegate oldDelegate) {
    return oldDelegate.searchbar != searchbar;
  }
}
