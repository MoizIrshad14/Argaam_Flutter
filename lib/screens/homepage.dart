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
    return SafeArea(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          CustomAppBar(),
          new SliverPadding(
            padding: new EdgeInsets.all(16.0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate([
                new  IconButton(
                  icon: const Icon(Icons.brightness_4),
                  onPressed: () => currentTheme.toggleTheme(),
                ),
                new Text("_body"),
                new Text("_author"),
                new Text("_body"),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
