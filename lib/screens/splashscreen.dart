import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  int selectedIndex = 0;
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => bottomnavigation()),
    );
  }

  @override
  void initState() {
    super.initState();
    showRelevant(); //navigate to login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange_background,
      body: Center(
        child: Container(
            child: Image.asset(
          "assets/icons/logo.png",
          height: 120,
          width: 120,
        )),
      ),
    );
  }
}
