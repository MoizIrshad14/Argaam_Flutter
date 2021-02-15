import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/screens/homepage.dart';
import 'package:Argaam_Flutter/theme/config.dart';
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
        body: ListView(
          padding: EdgeInsets.only(top: 80),
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
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
              child: TextField(
                // style: TextStyle(color: primary_text_one),
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: orange_border, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: dark_blue_background, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Icon(Icons.account_circle,
                      color: primary_orange, size: 25.0),
                  filled: true,
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: orange_border, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: dark_blue_background, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Icon(Icons.remove_red_eye_outlined,
                      color: primary_orange, size: 25.0),
                  filled: true,
                  labelText: 'Password',
                  errorStyle: TextStyle(
                    color: primary_text_one,
                  ),
                ),
              ),
            ),
            //Remember ME
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: <Widget>[
                  Text("أو"),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
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
                  Text("ر؟", style: TextStyle(fontSize: 18)),
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
                        _displaySnackBar(context);
                      },
                      child: ImageIcon(
                        AssetImage('assets/images/Gmail.png'),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), minimumSize: Size(60, 60)),
                      onPressed: () {
                        _displaySnackBar(context);
                      },
                      child: ImageIcon(
                        AssetImage('assets/images/Apple.png'),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), minimumSize: Size(60, 60)),
                      onPressed: () {
                        _displaySnackBar(context);
                      },
                      child: ImageIcon(
                        AssetImage('assets/images/Facebook.png'),
                      )),
                ],
              ),
            )
          ],
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
