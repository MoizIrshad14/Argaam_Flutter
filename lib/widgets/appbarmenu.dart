import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/widgets/menualert.dart';
import 'package:Argaam_Flutter/widgets/settingsalert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Argaam_Flutter/widgets/dropdown.dart';

class CustomAppBarMenu extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  _CustomAppBarMenuState createState() => _CustomAppBarMenuState();
}

class _CustomAppBarMenuState extends State<CustomAppBarMenu> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).accentColor,
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
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => SettingsAlert(),
              );
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Theme.of(context).primaryColor),
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.settings,
                color: grey_background,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
