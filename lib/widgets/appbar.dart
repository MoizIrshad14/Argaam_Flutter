import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(150),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: dark_blue_background,
      pinned: true,
      expandedHeight: 90,
      collapsedHeight: 90,
      flexibleSpace: new FlexibleSpaceBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10,left: 10),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(60, 60)),
                  onPressed: () {
                    // _displaySnackBar(context);
                  },
                  child: ImageIcon(
                    AssetImage('assets/images/Facebook.png'),
                  )),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(
                  "assets/icons/appbaricon.png",
                  height: 100,
                  width: 100,
                )),
            Container(
              margin: EdgeInsets.only(top: 10,right: 10),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: CircleBorder(),
                      minimumSize: Size(60, 60)),
                  onPressed: () {
                    // _displaySnackBar(context);
                  },
                  child: ImageIcon(
                    AssetImage('assets/icons/search.png'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
