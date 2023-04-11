import 'package:flutter/material.dart';

class AppBarContainer extends StatefulWidget {
  const AppBarContainer({
    super.key,
  });

  @override
  State<AppBarContainer> createState() => _AppBarContainerState();
}

class _AppBarContainerState extends State<AppBarContainer> {
  bool _iconBool = false;

  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;

  ThemeData _themeLight = ThemeData(
    primaryColor: Colors.amberAccent,
    brightness: Brightness.light,
  );
  ThemeData _themeDark =
      ThemeData(primaryColor: Colors.redAccent, brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      color: Colors.black,
      child: Row(
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 9),
            child: const Text(
              'CipherSchools',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 40),
            child: const Icon(
              Icons.explore_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          const Text(
            ' Browse',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _iconBool = !_iconBool;
              });
            },
            icon: Icon(_iconBool ? _iconDark : _iconLight),
            color: Colors.white,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
