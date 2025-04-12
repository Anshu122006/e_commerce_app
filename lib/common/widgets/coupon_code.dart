import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class CCouponCode extends StatelessWidget {
  const CCouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      radius: 14,
      backgroundColor: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: TextFormField(
              cursorHeight: 24,
              cursorColor: Colors.grey.shade600,
              decoration: InputDecoration(
                hintText: "Got a promo code? Enter here",
                hintStyle: Theme.of(
                  context,
                ).textTheme.bodySmall!.apply(fontStyle: FontStyle.italic),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                filled: false,
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Apply")),
        ],
      ),
    );
  }
}
