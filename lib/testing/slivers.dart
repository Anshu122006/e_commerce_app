import 'package:flutter/material.dart';

class SliverTest extends StatelessWidget {
  const SliverTest({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          expandedHeight: 400,
          flexibleSpace: Container(color: Colors.blue),
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed([
            for (int i = 0; i < 10; i++)
              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.only(bottom: 10),
                color: i % 2 == 0 ? Colors.green : Colors.yellow,
              ),
          ]),
        ),
      ],
    );
  }
}
