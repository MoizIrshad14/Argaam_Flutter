import 'package:flutter/material.dart';

class Customdropdown extends StatefulWidget {
  @override
  _CustomdropdownState createState() => _CustomdropdownState();
}

class _CustomdropdownState extends State<Customdropdown> {
  String _selected;
  List<Map> _myJson = [
    {"id": '1', "image": "assets/images/flag.png", "name": "UAE"},
    {"id": '2', "image": "assets/images/flag.png", "name": "Egypt"},
    {"id": '3', "image": "assets/images/flag.png", "name": "Pakistan"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      //height: 80,
      //color: Colors.yellow,
      // decoration: BoxDecoration(
      //     border: Border.all(width: 1, color: Colors.grey),
      //     borderRadius: BorderRadius.circular(10)),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DropdownButtonHideUnderline(
            child: ButtonTheme(
              //layoutBehavior: ButtonBarLayoutBehavior.padded,
              minWidth: 5.0,
              alignedDropdown: true,
              child: Container(
                height: MediaQuery.of(context).size.height,
                // width: 100.0,
                child: DropdownButton<String>(
                  //itemHeight: 200.0,
                  isDense: true,
                  hint: new Image.asset(
                    "assets/images/flag.png",
                    height: 55,
                  ),
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
                            height: 55,
                          ),
                          // Container(
                          //     margin: EdgeInsets.only(left: 10),
                          //     child: Text(map["name"])),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
