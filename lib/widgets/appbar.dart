import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/widgets/settingsalert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Argaam_Flutter/widgets/dropdown.dart';

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
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      centerTitle: true,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Customdropdown(),
          // Container(
          //     margin: EdgeInsets.only(left: 10),
          //     child: Image.asset(
          //       'assets/images/flag.png',
          //       width: 60,
          //       height: 60,
          //     )),
          Container(
              child: Image.asset(
            "assets/icons/appbaricon.png",
            height: 100,
            width: 100,
          )),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  elevation: 0,
                  minimumSize: Size(60, 60),
                  primary: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  // SettingsAlert();
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
