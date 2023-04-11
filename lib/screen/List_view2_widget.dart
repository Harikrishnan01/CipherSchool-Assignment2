import 'package:flutter/material.dart';

class ListView2Widget extends StatelessWidget {
  const ListView2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 15),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 225,
              color: Colors.yellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 225,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 225,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 225,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 225,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
