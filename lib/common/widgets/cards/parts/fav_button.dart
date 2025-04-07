import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CFavButton extends StatelessWidget {
  const CFavButton({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [Iconsax.heart, Iconsax.heart5];

    return IconButton(
      onPressed: () {
      },
      icon: Icon(icons[0], color: Colors.red.shade400, size: 32),
    );
  }
}
