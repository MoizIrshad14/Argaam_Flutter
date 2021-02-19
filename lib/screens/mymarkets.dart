import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/screens/login.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:Argaam_Flutter/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

class mymarkets extends StatefulWidget {
  @override
  _mymarketsState createState() => _mymarketsState();
}

class _mymarketsState extends State<mymarkets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: CurvedScreenContainer(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Image(image: AssetImage("assets/images/noti.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Text(
                      "إذا كنت تريد رؤية المزيد من المعلومات ، فأنت بحاجة إلى تسجيل الدخول أولاً",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              Spacer(),
              Container(
                height: 55,
                child: RaisedButton(
                    child: Text("تسجيل الدخول",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => login(),
                      );
                    }),
              ),
              Container(
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }
}
