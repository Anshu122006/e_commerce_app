import 'package:flutter/material.dart';

class CDeliverTo extends StatefulWidget {
  const CDeliverTo({super.key, this.adress});
  final String? adress;
  @override
  State<CDeliverTo> createState() => CDeliverToState();
}

class CDeliverToState extends State<CDeliverTo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: EdgeInsets.only(top: 4, bottom: 14),
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 6),
            child: Icon(Icons.location_pin),
          ),
          Row(
            children: [
              Text("Deliver to "),
              Text(
                widget.adress ?? "not set",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Transform.translate(
              offset: Offset(0, -10),
              child: Icon(Icons.expand_more),
            ),
          ),
        ],
      ),
    );
  }
}
