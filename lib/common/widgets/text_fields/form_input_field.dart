import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CFormInputField extends StatelessWidget {
  const CFormInputField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.filled = true,
    this.obscureText = false,
  });
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? labelText;
  final bool filled;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final bool isDark = CDeviceHelper.isDarkMode(context);
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        cursorColor: Colors.grey.shade700,
        style: TextStyle(color: isDark ? Colors.grey : Colors.grey.shade800, fontSize: 16),
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: filled,
          prefixIcon: Icon(prefixIcon),
          labelText: labelText,
          suffixIcon: Icon(suffixIcon),
        ),
      ),
    );
  }
}
