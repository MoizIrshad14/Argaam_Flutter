import 'package:flutter/material.dart';

class menuScreen extends StatefulWidget {
  @override
  _menuScreenState createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                width: 300,
                //color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 220,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/colorlogo.png"),
                        ),
                        title: Text("User Name"),
                        subtitle: Text("Textttttttt"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: VerticalDivider(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      child: ListTile(
                        leading: Text("aaaa"),
                        title: Text("Text"),
                        subtitle: Text("Text"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
