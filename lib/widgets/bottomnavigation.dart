import 'package:Argaam_Flutter/screens/homepage.dart';
import 'package:Argaam_Flutter/screens/mymarkets.dart';
import 'package:Argaam_Flutter/screens/menuScreen.dart';
import 'package:Argaam_Flutter/screens/streamer.dart';
import 'package:Argaam_Flutter/screens/financialreports.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Circular Bottom Navigation Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'circular_bottom_navigation'),
//     );
//   }
// }

class bottomnavigation extends StatefulWidget {
  bottomnavigation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _bottomnavigationState createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", Colors.orange,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(Icons.search, "My Markets", Colors.orange,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(Icons.message, "Financial Report", Colors.orange,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(Icons.layers, "Streamer", Colors.orange,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    new TabItem(Icons.menu, "Menu", Colors.orange,
        labelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
  ]);

  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: _tabbarMenus(selectedPos),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget _tabbarMenus(int index) {
    switch (index) {
      case 0:
        return homepage();
      case 1:
        return mymarkets();
      case 2:
        return mymarkets();
      case 3:
        return mymarkets();
      case 4:
        return menuScreen();
      default:
        return homepage();
    }
  }

  Widget bottomNav() {
    return SafeArea(
      child: CircularBottomNavigation(
        tabItems,
        controller: _navigationController,
        barHeight: bottomNavBarHeight,
        barBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
        animationDuration: Duration(milliseconds: 300),
        selectedCallback: (int selectedPos) {
          setState(() {
            this.selectedPos = selectedPos;
            print(_navigationController.value);
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}
