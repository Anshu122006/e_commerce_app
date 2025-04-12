import 'package:e_commerce_app/features/shop/screens/checkout/widgets/type_cost.dart';
import 'package:flutter/material.dart';

class CPricingDetails extends StatelessWidget {
  const CPricingDetails({super.key, this.currencySymbol = "\$"});

  final String currencySymbol;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 1,
      children: [
        CTypeCost(currencySymbol: currencySymbol, type: "Subtotal", cost: 56),
        CTypeCost(
          currencySymbol: currencySymbol,
          type: "Shipping Fee",
          cost: 4,
        ),
        CTypeCost(currencySymbol: currencySymbol, type: "Tax Fee", cost: 2),
        CTypeCost(
          currencySymbol: currencySymbol,
          type: "Order Total",
          cost: 62,
          isTotal: true,
        ),
      ],
    );
  }
}
