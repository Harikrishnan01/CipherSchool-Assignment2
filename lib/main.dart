import 'package:assignment2/screen/main_screen.dart';
import 'package:assignment2/screen/screen_courses.dart';
import 'package:assignment2/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: ScreenCourses(),
    );
  }
}
