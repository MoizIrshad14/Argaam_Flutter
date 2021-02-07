import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/screens/homepage.dart';
import 'package:Argaam_Flutter/screens/login.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:Argaam_Flutter/widgets/bottomnavigation.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
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
      body: Container(
        color: primary_splash,
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            // color: Colors.black,
            child: Image(
              image: AssetImage("assets/icons/logo.png"),
              color: Colors.white,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
