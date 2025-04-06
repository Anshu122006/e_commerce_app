import 'package:flutter/material.dart';

class CBroadButton extends StatelessWidget {
  const CBroadButton({
    super.key,
    required this.text,
    this.isOutlined = false,
    this.onClick,
  });
  final String text;
  final bool isOutlined;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:
          isOutlined
              ? OutlinedButton(onPressed: onClick ?? () {}, child: Text(text))
              : ElevatedButton(onPressed: onClick ?? () {}, child: Text(text)),
    );
  }
}
