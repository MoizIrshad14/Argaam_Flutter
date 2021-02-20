import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/screens/login.dart';
import 'package:flutter/material.dart';

class AlertMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertMenuState();
}

class AlertMenuState extends State<AlertMenu>
    with SingleTickerProviderStateMixin {
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
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        "إعدادات",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.dangerous,
                        color: Colors.red,
                        size: 40.0,
                      ),
                    ),
                    Directionality(
                      textDirection: getCurrentTextDirection(),
                      child: Text(
                        "وريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 50),
                            onPrimary: black_text,
                            primary: orange_background,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                            //_displaySnackBar(context);
                          },
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: white_text),
                          )),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
