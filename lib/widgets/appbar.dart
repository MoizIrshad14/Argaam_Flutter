import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/flag.png',width: 60,height: 60,)
          ),
          Container(
              child: Image.asset(
                "assets/icons/appbaricon.png",
                height: 100,
                width: 100,
              )),
          Container(
            margin: EdgeInsets.only(right: 10),
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
    );
  }
}
