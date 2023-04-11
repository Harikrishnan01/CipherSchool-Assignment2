import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class bottomnavigationbar extends StatelessWidget {
  const bottomnavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: ((context, int newindex, _) {
          return BottomNavigationBar(
              currentIndex: newindex,
              onTap: (value) {
                indexchangenotifier.value = value;
              },
              selectedItemColor: Colors.yellow,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bar_chart), label: 'Courses'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: 'Trending'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'My Profile'),
              ]);
        }));
  }
}
