import 'package:Argaam_Flutter/theme/config.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Demonstration',
            ),
            IconButton(
              icon: const Icon(Icons.brightness_4),
              onPressed: () => currentTheme.toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
