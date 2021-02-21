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
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
                child: Image.asset(
              "assets/icons/appbaricon.png",
              height: 100,
              width: 100,
            )),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 15,
              top: 5,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  elevation: 0,
                  minimumSize: Size(60, 60),
                  primary: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => SettingsAlert(),
                  );
                },
                child: Icon(
                  Icons.settings,
                  color: grey_background,
                )),
          ),
        ],
      ),
    );
  }
}
