import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/common/widgets/primary_header.dart';
import 'package:e_commerce_app/features/personalisation/screens/adress/current_adresses.dart';
import 'package:e_commerce_app/features/shop/screens/account/widgets/option_tile.dart';
import 'package:e_commerce_app/features/shop/screens/account/widgets/user_profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeader(
              child: Column(
                children: [
                  CAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.apply(color: Colors.white),
                    ),
                  ),
                  CUserProfileTile(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CHeading(title: "Account Settings"),
                  ),
                  const SizedBox(height: 10),

                  COptionTile(
                    leadingIcon: Iconsax.safe_home,
                    title: "My Adresses",
                    subtitle: "Set shopping delivery adress",
                    onPressed: () => Get.to(() => CCurrentAdresses()),
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "View the items in your cart",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "Check your orders",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.bank,
                    title: "Bank Accounts",
                    subtitle: "Check your bank account",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: "View your collected coupons",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.notification,
                    title: "Notifications",
                    subtitle: "Check your current notifications",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.security,
                    title: "Account Privacy",
                    subtitle: "Change your account privact settings",
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CHeading(title: "App Settings"),
                  ),
                  const SizedBox(height: 10),

                  COptionTile(
                    leadingIcon: Iconsax.data,
                    title: "Load Data",
                    subtitle: "Upload data to cloud",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Show results base on your location",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.security,
                    title: "Safe Mode",
                    subtitle: "Search results in safe mode",
                  ),
                  COptionTile(
                    leadingIcon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: "Set the quality for your images",
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Logout"),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
