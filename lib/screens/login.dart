import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/screens/homepage.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 20,
                    child: Image(image: AssetImage("assets/icons/back.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 80,
                  width: 50,
                  child: Image(image: AssetImage("assets/images/colorlogo.png"),
                fit: BoxFit.contain,)
              ),
              SizedBox(height: 30),
              Container(
                child: Center(
                    child: Text("!أهلابك",style: TextStyle(fontSize: 35))
                ),
              ),
              Container(
                child: Center(
                    child: Text("أدخل التفاصيل الخاصة بك للبدء",style: TextStyle(fontSize: 20))
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: primary_text_one),
                  controller: nameController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_circle,color: primary_text_one,size: 25.0),
                    filled: true,
                    fillColor: primary_background_card_one,
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: const BorderSide(color: primary_text_one, width: 0.0)
                    // ),
                    labelStyle: TextStyle(color: primary_text_one),
                    labelText: 'Username',
                    errorStyle: TextStyle(
                      color: primary_text_one,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: primary_text_one),
                  controller: nameController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,color: primary_text_one,size: 25.0),
                    filled: true,
                    fillColor: primary_background_card_one,
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: const BorderSide(color: primary_text_one, width: 0.0)
                    // ),
                    labelStyle: TextStyle(color: primary_text_one),
                    labelText: 'Password',
                    errorStyle: TextStyle(
                      color: primary_text_one,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  child: RaisedButton(child: Text("تسجيل الدخول",style: TextStyle(fontSize: 20,color: Colors.white)),onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
                    );
                  }),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.brightness_4),
                onPressed: () => currentTheme.toggleTheme(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
