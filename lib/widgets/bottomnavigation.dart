import 'package:Argaam_Flutter/screens/homepage.dart';
import 'package:Argaam_Flutter/screens/navigationdrawer.dart';
import 'package:Argaam_Flutter/screens/streamer.dart';
import 'package:Argaam_Flutter/screens/webviewmenu.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

class bottomnavigation extends StatefulWidget {
  @override
  _bottomnavigationState createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int currentIndex = 0;
  final List<Widget> _children = [
    homepage(),
    streamer(),
    webViewMenu(),
    webViewMenu(),
    navigationdrawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          unselectedItemLabelColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          unselectedItemBackgroundColor: Color(0xFF707070),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          barHeight: 65,
        ),
        selectedIndex: currentIndex,
        onSelectTab: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Financial Reports',
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: Icons.attach_money,
            label: 'My Companies',
            selectedBackgroundColor: Colors.purple,
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: 'Events',
            selectedBackgroundColor: Colors.blue,
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Menu',
            selectedBackgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
