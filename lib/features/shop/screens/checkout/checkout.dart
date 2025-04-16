import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/common/widgets/text_fields/coupon_code.dart';
import 'package:e_commerce_app/common/widgets/accessories/text_divider.dart';
import 'package:e_commerce_app/common/widgets/accessories/heading.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/common/widgets/layouts/rounded_container.dart';
import 'package:e_commerce_app/features/personalisation/screens/adress/widgets/adress_box.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/pricing_details.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Text(
          "Product Overview",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(CPaddings.mainScreen),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                return CCartItem(showCount: false);
              },
              separatorBuilder:
                  (_, __) => SizedBox(width: CSizes.columnSpacingMid),
              itemCount: 2,
            ),

            const SizedBox(height: CSizes.columnSpacingLarge),

            CCouponCode(),

            const SizedBox(height: CSizes.columnSpacingLarge),

            CRoundedContainer(
              padding: EdgeInsets.all(CPaddings.md),
              radius: 18,
              backgroundColor: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CPricingDetails(),
                  CTextDivider(),
                  CHeading(
                    title: "Payment Method",
                    buttonText: "Change",
                    onPressed: () {},
                  ),
                  Row(
                    spacing: CSizes.rowSpacingLarge,
                    children: [
                      CRoundedImage(
                        image: CImages.paytmIcon,
                        width: 50,
                        backgroundColor: Colors.transparent,
                        showBorder: false,
                      ),
                      Text(
                        "Paytm",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.apply(fontWeightDelta: 2),
                      ),
                    ],
                  ),
                  CHeading(
                    title: "ShippingAdress",
                    buttonText: "Change",
                    onPressed: () {},
                  ),
                  CAdressBox(showBorder: false),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: CPaddings.l,
          vertical: CPaddings.sm,
        ),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => CNotificationScreen(
                  image: CImages.successTick,
                  title: "Payment done successfully!",
                  onContinue: () => Get.back(),
                  onClose: () => Get.back(),
                ),
              ),
          child: Text("Checkout  \$62.0"),
        ),
      ),
    );
  }
}
