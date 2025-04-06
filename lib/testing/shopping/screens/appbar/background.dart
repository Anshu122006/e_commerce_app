import 'package:flutter/material.dart';

class CBackground extends StatelessWidget {
  const CBackground({super.key, this.height = 200, this.child});
  final double height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green.shade600,
            Colors.green.shade500,
            Colors.green.shade400,
            Colors.green.shade300,
            Colors.green.shade200,
            Colors.green.shade100,
            const Color.fromARGB(255, 247, 255, 247),
          ],
        ),
      ),
      child: child,
    );
  }
}
