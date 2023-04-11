import 'package:flutter/material.dart';

class ListView1Widget extends StatelessWidget {
  const ListView1Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 429.5,
          color: Colors.yellow,
        ),
        Container(
          width: 429.5,
          color: Colors.orange,
        ),
        Container(
          width: 429.5,
          color: Colors.blue,
        ),
        Container(
          width: 429.5,
          color: Colors.green,
        ),
        Container(
          width: 429.5,
          color: Colors.white,
        ),
      ],
    );
  }
}
