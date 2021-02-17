import 'package:flutter/material.dart';

class Customdropdown extends StatefulWidget {
  @override
  _CustomdropdownState createState() => _CustomdropdownState();
}

class _CustomdropdownState extends State<Customdropdown> {
  String _selected;
  List<Map> _myJson = [
    {"id": '1', "image": "assets/images/flag.png", "name": "Oman"},
    {"id": '2', "image": "assets/images/flag.png", "name": "Egypt"},
    {"id": '3', "image": "assets/images/flag.png", "name": "UAE"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //     border: Border.all(width: 1, color: Colors.grey),
      //     borderRadius: BorderRadius.circular(10)),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                isDense: true,
                hint: new Text("Select Bank"),
                value: _selected,
                onChanged: (String newValue) {
                  setState(() {
                    _selected = newValue;
                  });

                  print(_selected);
                },
                items: _myJson.map((Map map) {
                  return new DropdownMenuItem<String>(
                    value: map["id"].toString(),
                    // value: _mySelection,
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          map["image"],
                          width: 30,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(map["name"])),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
