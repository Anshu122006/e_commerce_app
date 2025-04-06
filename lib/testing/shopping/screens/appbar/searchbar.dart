import 'package:e_commerce_app/common/decoration/styles/shadow.dart';
import 'package:flutter/material.dart';

class CTestSearchbar extends StatefulWidget {
  const CTestSearchbar({super.key, this.helperText});
  final String? helperText;

  @override
  State<CTestSearchbar> createState() => _CTestSearchbarState();
}

class _CTestSearchbarState extends State<CTestSearchbar> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade600,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
        boxShadow: [CShadows.mildShadowLight],
      ),
      child: Row(
        children: [
          Expanded(flex: 1, child: Icon(Icons.search)),
          Expanded(
            flex: 9,
            child: TextField(
              controller: _controller,
              cursorColor: Colors.grey,
              cursorWidth: 1,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontStyle: FontStyle.normal,
              ),
              decoration: InputDecoration(
                hintText: widget.helperText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
                border: InputBorder.none,
                filled: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
