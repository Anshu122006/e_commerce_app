import 'package:e_commerce_app/common/widgets/layouts/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/read_more.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CCompanyReply extends StatelessWidget {
  const CCompanyReply({
    super.key,
    required this.companyName,
    required this.date,
    required this.desc,
  });

  final String companyName;
  final String date;
  final String desc;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return CRoundedContainer(
      padding: EdgeInsets.all(20),
      radius: 20,
      backgroundColor: isDark ? Colors.grey.shade700 : Colors.grey.shade300,
      showBorder: false,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                companyName,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                  fontWeightDelta: 3,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              Text(
                date,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          CReadMore(
            text:
                desc,
          ),
        ],
      ),
    );
  }
}
