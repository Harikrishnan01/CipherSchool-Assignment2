import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(children: [
          Container(
            width: 100.5,
            height: 300,
            color: Colors.blue,
          ),
          Container(
            width: 100.5,
            height: 300,
            color: Colors.orange,
          ),
        ]),
      ],
    );
  }
}
