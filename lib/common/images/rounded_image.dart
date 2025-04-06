import 'package:flutter/material.dart';

class CRoundedImage extends StatelessWidget {
  const CRoundedImage({
    super.key,
    required this.image,
    this.radius = 14,
    this.borderThickness = 2,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.grey,
    this.hasBorder = false,
    this.fit = BoxFit.cover,
    this.onPressed,
    this.height,
    this.width,
    this.overlayColor = Colors.transparent,
  });

  final String image;
  final double radius;
  final double? height;
  final double? width;
  final double borderThickness;
  final Color backgroundColor;
  final Color overlayColor;
  final Color borderColor;
  final bool hasBorder;
  final BoxFit fit;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border:
                hasBorder
                    ? Border.all(
                      style: BorderStyle.solid,
                      color: borderColor,
                      width: borderThickness,
                    )
                    : null,
            color: backgroundColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Image(image: AssetImage(image), fit: fit),
          ),
        ),
      ),
    );
  }
}
