import 'package:e_commerce_app/common/widgets/buttons/cart_button.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/sliver_appbar.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CAppBar(
        titleText: "Store",
        showBackArrow: false,
        actions: [CCartButton()],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, __) {
            return [CStoreAppbar()];
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
