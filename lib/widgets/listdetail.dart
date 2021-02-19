import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class listdetail extends StatefulWidget {
  @override
  _listdetailState createState() => _listdetailState();
}

class _listdetailState extends State<listdetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(top: 5, left: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                elevation: 0,
                minimumSize: Size(60, 60),
                primary: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.pop(context);
                // _displaySnackBar(context);
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: Container(
            //margin: EdgeInsets.only(left: 120),
            child: Image.asset(
          "assets/icons/appbaricon.png",
          height: 100,
          width: 100,
        )),
      ),
      body: CurvedScreenContainer(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 18, right: 18, top: 25),
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/blog.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Directionality(
                          textDirection: getCurrentTextDirection(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(children: [Text("11/12/2020")]),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "مليار ريال للسنة المالية 2019",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Icon(Icons.access_time)),
                                      Text(
                                        "قبل 45 دقيقة",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 50),
                                    child: Row(
                                      children: [
                                        Text(
                                          "45",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(right: 5),
                                            child: //Icon(Icons.messenger_outline)
                                                ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/streamer.png"),
                                                    color: Theme.of(context)
                                                        .dividerTheme
                                                        .color)),
                                        Container(
                                            padding: EdgeInsets.only(right: 5),
                                            child:
                                                Icon(Icons.favorite_outline)),
                                        Container(
                                            padding: EdgeInsets.only(
                                                right: 5, left: 10),
                                            child: Icon(Icons.arrow_upward)),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
