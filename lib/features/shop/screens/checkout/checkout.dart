import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/common/widgets/coupon_code.dart';
import 'package:e_commerce_app/common/widgets/dividers/text_divider.dart';
import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/features/personalisation/screens/adress/widgets/adress_box.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/pricing_details.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
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
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                return CCartItem(showCount: false);
              },
              separatorBuilder: (_, __) => SizedBox(width: 10),
              itemCount: 2,
            ),

            const SizedBox(height: 20),

            CCouponCode(),

            const SizedBox(height: 20),

            CRoundedContainer(
              padding: EdgeInsets.all(14),
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
                    spacing: 20,
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
                        ).textTheme.bodyMedium!.apply(fontWeightDelta: 3),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
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
