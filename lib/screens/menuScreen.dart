import 'dart:async';

import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/widgets/appbarmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:Argaam_Flutter/widgets/animatedalert.dart';

class menuScreen extends StatefulWidget {
  @override
  _menuScreenState createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  List<String> icons = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/8.png",
    "assets/images/9.png",
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/8.png",
    "assets/images/9.png",
    "assets/images/1.png"
  ];
  List<String> listitems = [
    'الأسواق',
    'ارجام البصيرة',
    'مؤشرات السوق',
    'الأحداث',
    'المفضلة',
    'الأكثر قراءة',
    'ضبط',
    'معلومات عنا',
    'اتصل بنا',
    'الأسواق',
    'ارجام البصيرة',
    'مؤشرات السوق',
    'الأحداث',
    'المفضلة',
    'الأكثر قراءة',
    'ضبط',
    'معلومات عنا',
    'اتصل بنا',
    'اتصل بنا',
  ];

  // List<String> listitems = [
  //   'Streamer',
  //   'Argaam Pulse',
  //   'My Companies',
  //   'Favorite',
  //   'Financial Reports',
  //   'Most Read',
  //   'Real State',
  //   'Investor Opinion',
  //   'corona',
  //   'International Market',
  //   'Market Indicators',
  //   'Events',
  //   'Alpha Beta',
  //   'Editor Choice',
  //   'Argaam Insights',
  //   'Settings',
  //   'Share App',
  //   'Contact Us',
  //   'About Us'
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBarMenu(),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Image(
        //     image: AssetImage(
        //       'assets/images/colorlogo.png',
        //     ),
        //     width: 100,
        //     height: 100,
        //   ),
        //   leading: Padding(
        //     padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        //     child: CircleAvatar(
        //       radius: 50,
        //       backgroundImage: AssetImage("assets/icons/uae_flag.png"),
        //     ),
        //   ),
        //   leadingWidth: 60.0,
        //   actions: [
        //     Padding(
        //         padding: EdgeInsets.only(right: 20.0),
        //         child: GestureDetector(
        //           onTap: () {
        //             print("search button pressed");
        //           },
        //           child: Container(
        //             height: 50,
        //             width: 50,
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: Colors.grey[200],
        //             ),
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Icon(
        //                 Icons.search,
        //                 size: 26.0,
        //                 color: Colors.grey[400],
        //               ),
        //             ),
        //           ),
        //         ))
        //   ],
        // ),
        body: Container(
          color: Colors.grey[200],
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: listitems.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _getUserHeader();
                }
                return _rowWidget(index);
              }),
        ),
      ),
    );
  }

  Widget _getUserHeader() {
    return InkWell(
      onTap: () {
        Timer timer = Timer(Duration(milliseconds: 2000), () {
          Navigator.of(context, rootNavigator: true).pop();
        });
        showDialog(
          context: context,
          builder: (context) {
            return FunkyOverlay();
          },
        ).then((value) {
          // dispose the timer in case something else has triggered the dismiss.
          timer?.cancel();
          timer = null;
        });
      },
      child: Container(
          height: 116,
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(16, 20, 16, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0), color: Colors.white),
          child: Directionality(
            textDirection: getCurrentTextDirection(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("assets/images/ww.png"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "محمد عمير",
                            textDirection: getCurrentTextDirection(),
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "عرض الصفحة الشخصي",
                            textDirection: getCurrentTextDirection(),
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 1,
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        height: 60,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/Amount.png',
                            ),
                            width: 40,
                            height: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            " صافياً قدره",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "20.25",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ]),
          )),
    );
  }

  Widget _rowWidget(int index) {
    return InkWell(
      onTap: () {
        Timer timer = Timer(Duration(milliseconds: 2000), () {
          Navigator.of(context, rootNavigator: true).pop();
        });
        showDialog(
          context: context,
          builder: (context) {
            return FunkyOverlay();
          },
        ).then((value) {
          // dispose the timer in case something else has triggered the dismiss.
          timer?.cancel();
          timer = null;
        });
      },
      child: Container(
        height: 70,
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0), color: Colors.white),
        child: Directionality(
            textDirection: getCurrentTextDirection(),
            child: ListTile(
              leading: Container(
                  height: 30, width: 30, child: Image.asset(icons[index - 1])),
              // Icon(
              //   Icons.arrow_drop_down_circle,
              //   color: Colors.orange[300],
              // ),
              title: Text(
                this.listitems[index - 1],
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              trailing: Icon(
                getCurrentTextDirection() == TextDirection.rtl
                    ? Icons.keyboard_arrow_left
                    : Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}
