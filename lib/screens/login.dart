import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/widgets/animatedalert.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool rememberMe = false;
  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: white_background,
        //   leading: Container(
        //     margin: EdgeInsets.only(top: 5, left: 10),
        //     child: ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           shape: CircleBorder(),
        //           elevation: 0,
        //           minimumSize: Size(60, 60),
        //           primary: appbar_serach_background,
        //         ),
        //         onPressed: () {
        //           Navigator.pop(context);
        //           // _displaySnackBar(context);
        //         },
        //         child: Icon(Icons.arrow_back_ios)),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CurvedScreenContainer(
            child: ListView(
              padding: EdgeInsets.only(top: 10),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 0,
                            minimumSize: Size(50, 50),
                            primary: light_grey_background,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            // _displaySnackBar(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: white_background,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                    height: 80,
                    width: 50,
                    child: Image(
                        image: AssetImage("assets/images/colorlogo.png"),
                        fit: BoxFit.contain)),
                SizedBox(height: 30),
                Container(
                  child: Center(
                      child: Text("أهلابك!", style: TextStyle(fontSize: 35))),
                ),
                Container(
                  child: Center(
                      child: Text("أدخل التفاصيل الخاصة بك للبدء",
                          style: TextStyle(fontSize: 20))),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Directionality(
                    textDirection: getCurrentTextDirection(),
                    child: TextField(
                      // style: TextStyle(color: primary_text_one),
                      controller: nameController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: orange_border, width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: dark_blue_background, width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: Icon(Icons.mail_outline_outlined,
                            color: primary_orange, size: 25.0),
                        filled: true,
                        labelText: 'بريد الالكتروني',
                        labelStyle: TextStyle(fontSize: 20, color: black_text),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Directionality(
                    textDirection: getCurrentTextDirection(),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: orange_border, width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: dark_blue_background, width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: Icon(Icons.lock_outline,
                            color: primary_orange, size: 25.0),
                        filled: true,
                        labelText: 'كلمة المرور',
                        labelStyle: TextStyle(fontSize: 20, color: black_text),
                        errorStyle: TextStyle(
                          color: primary_text_one,
                        ),
                      ),
                    ),
                  ),
                ),
                //Remember ME
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: <Widget>[
                      Text("تذكرنى"),
                      Theme(
                        data: Theme.of(context).copyWith(
                          unselectedWidgetColor: Colors.orange,
                        ),
                        child: Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.orange,
                          value: rememberMe,
                          onChanged: (bool value) {
                            setState(() {
                              rememberMe = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //Login Button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  height: 80,
                  child: RaisedButton(
                      child: Text("تسجيل الدخول",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => FunkyOverlay(),
                        );
                      }),
                ),
                //-OR-
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 90,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text("أو", style: TextStyle(fontSize: 18)),
                      Container(
                        height: 20,
                        width: 90,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                //Social Sign in
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), minimumSize: Size(60, 60)),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => FunkyOverlay(),
                            );
                          },
                          child: ImageIcon(
                            AssetImage('assets/images/Gmail.png'),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), minimumSize: Size(60, 60)),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => FunkyOverlay(),
                            );
                          },
                          child: ImageIcon(
                            AssetImage('assets/images/Apple.png'),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), minimumSize: Size(60, 60)),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => FunkyOverlay(),
                            );
                          },
                          child: ImageIcon(
                            AssetImage('assets/images/Facebook.png'),
                          )),
                    ],
                  ),
                ),
                Directionality(
                  textDirection: getCurrentTextDirection(),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("فتح حساب جديد",
                            style: TextStyle(color: black_text, fontSize: 20)),
                        Text("هل نسيت كلمة السر؟",
                            style: TextStyle(color: black_text, fontSize: 20)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(
        content:
            Text('This function is under development by team F L U T T E R.'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
