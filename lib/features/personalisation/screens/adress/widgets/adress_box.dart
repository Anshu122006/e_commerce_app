import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CAdressBox extends StatelessWidget {
  const CAdressBox({
    super.key,
    this.isSelected = false,
    this.showBorder = true,
  });

  final bool showBorder;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      padding: EdgeInsets.all(showBorder ? 14 : 0),
      backgroundColor:
          isSelected
              ? Theme.of(context).primaryColor.withAlpha(120)
              : Colors.transparent,
      radius: 20,
      showBorder: showBorder,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pandamon",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(fontWeightDelta: 3),
              ),
              Text(
                "(+91) 779 226 1920",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Planet-9, Solar System, Milkyway Galaxy near Adromida Galaxy",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          isSelected
              ? Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.tick_circle,
                    color:
                        CDeviceHelper.isDarkMode(context)
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
              )
              : SizedBox(),
        ],
      ),
    );
  }
}
