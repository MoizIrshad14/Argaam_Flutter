import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/screens/login.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

class SettingsAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingsAlertState();
}

class SettingsAlertState extends State<SettingsAlert>
    with SingleTickerProviderStateMixin {
  bool status = false;
  bool statuslan = false;
  bool statusnoti = false;

  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            decoration: ShapeDecoration(
                color: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        "إعدادات",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Directionality(
                      textDirection: getCurrentTextDirection(),
                      child: Text('.قم بتشغيل وضع الظلام والضوء من هنا',
                          style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSwitch(
                                activeColor: Colors.orangeAccent,
                                value: status,
                                onChanged: (value) {
                                  print("VALUE : $value");
                                  setState(() {
                                    currentTheme.toggleTheme();
                                    status = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Directionality(
                            textDirection: getCurrentTextDirection(),
                            child: Container(child: Builder(builder: (context) {
                              /// some operation here ...
                              if (status == true) {
                                return Text('وضع الظلام',
                                    style: TextStyle(fontSize: 20));
                              } else
                                return Text('وضع الضوء',
                                    style: TextStyle(fontSize: 20));
                            })),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Divider(
                        color: Theme.of(context).dividerTheme.color,
                        height: 0.5,
                        thickness: 1,
                      ),
                    ),
                    Directionality(
                      textDirection: getCurrentTextDirection(),
                      child: Text(".تغيير اللغة من الإنجليزية إلى العربية",
                          style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSwitch(
                                activeColor: Colors.orangeAccent,
                                value: statuslan,
                                onChanged: (value) {
                                  print("VALUE : $value");
                                  setState(() {
                                    statuslan = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Directionality(
                            textDirection: getCurrentTextDirection(),
                            child: Container(child: Builder(builder: (context) {
                              /// some operation here ...
                              if (statuslan == true) {
                                return Text('الإنجليزية',
                                    style: TextStyle(fontSize: 20));
                              } else
                                return Text("عربي",
                                    style: TextStyle(fontSize: 20));
                            })),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Divider(
                        color: Theme.of(context).dividerTheme.color,
                        height: 0.5,
                        thickness: 1,
                      ),
                    ),
                    Directionality(
                      textDirection: getCurrentTextDirection(),
                      child: Text("تشغيل الإخطارات",
                          style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSwitch(
                                activeColor: Colors.orangeAccent,
                                value: statusnoti,
                                onChanged: (value) {
                                  print("VALUE : $value");
                                  setState(() {
                                    statusnoti = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Directionality(
                            textDirection: getCurrentTextDirection(),
                            child: Container(child: Builder(builder: (context) {
                              /// some operation here ...
                              if (statusnoti == true) {
                                return Text('تشغيل',
                                    style: TextStyle(fontSize: 20));
                              } else
                                return Text("إيقاف",
                                    style: TextStyle(fontSize: 20));
                            })),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    // Container(
                    //   child: ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //         minimumSize: Size(350, 50),
                    //         onPrimary: black_text,
                    //         primary: orange_background,
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: new BorderRadius.circular(8.0),
                    //         ),
                    //       ),
                    //       onPressed: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) => login()),
                    //         );
                    //         //_displaySnackBar(context);
                    //       },
                    //       child: Text(
                    //         "تسجيل الدخول",
                    //         style: TextStyle(
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.bold,
                    //             color: white_text),
                    //       )),
                    // )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
