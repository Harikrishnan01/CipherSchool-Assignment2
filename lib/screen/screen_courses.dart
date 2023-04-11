import 'package:assignment2/screen/List_view2_widget.dart';
import 'package:assignment2/screen/List_view_widget.dart';
import 'package:assignment2/screen/main_screen.dart';
import 'package:assignment2/widgets/app_bar.dart';
import 'package:assignment2/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class ScreenCourses extends StatelessWidget {
  ScreenCourses({super.key});

  @override
  final _list = [
    'a',
    'b',
    'c',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          child: AppBarWidget(), preferredSize: Size.fromHeight(100)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 40,
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: bottomnavigationbar()),
      ),
      body: Column(
        children: [
          LimitedBox(
              maxHeight: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return ListView1Widget();
                },
                itemCount: 5,
              )),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Text(
                      'Recommanded Courses',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.grey.withOpacity(0.5),
                      child: DropdownButtonFormField(
                          hint: Text(
                            'Popular',
                            style: TextStyle(color: Colors.white),
                          ),
                          items: _list.map((e) {
                            return DropdownMenuItem(value: e, child: Text(e));
                          }).toList(),
                          onChanged: (value) {
                            print(value);
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
          LimitedBox(
              maxHeight: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return ListView2Widget();
                },
                itemCount: 5,
              )),
        ],
      ),
    );
  }
}
