import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:Argaam_Flutter/widgets/homeslider.dart';
import 'package:Argaam_Flutter/widgets/hometabs.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Container(width: 220, child: Tab(text: "أحدث الأخبار")),
    Container(width: 220, child: Tab(text: "شارك السعر")),
    Container(width: 220, child: Tab(text: "مؤشرات السوق")),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);
    //_containerheight = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    double _containerheight = MediaQuery.of(context).size.height;
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
        if (_controller.index == 0) {
          _containerheight;
        } else {
          _containerheight;
        }
      });
      print("Selected Index: " + _controller.index.toString());
    });
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white10,
                  blurRadius: 50.0, // soften the shadow
                  spreadRadius: 15.0, //extend the shadow
                  offset: Offset(
                    15.0, // Move to right 10  horizontally
                    15.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              color: light_blue_background,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                children: [
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: TabBar(
                              labelColor: white_text,
                              unselectedLabelColor: grey_text,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicator: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: orange_background),
                              onTap: (index) {
                                print(index);
                              },
                              controller: _controller,
                              tabs: list),
                        ),
                        Container(
                          height: _containerheight,
                          child: TabBarView(
                            controller: _controller,
                            children: <Widget>[
                              ListView(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    child: Container(
                                      height: 110,
                                      decoration: BoxDecoration(
                                          color: dark_blue_background,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      //color: Colors.green,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              height: 120,
                                              width: 180,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text("طاسي",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text("7,862.23",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("23.64 (0.33%) ↑",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors
                                                              .green[400])),
                                                ],
                                              )),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 15),
                                            child: VerticalDivider(
                                              width: 1,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            height: 120,
                                            width: 180,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text("اًموي03رخآ",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      right: 10),
                                                  child: Center(
                                                      child: Image.asset(
                                                    "assets/icons/chart.png",
                                                    height: 40,
                                                  )),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      right: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text("w4"),
                                                      Text("w3"),
                                                      Text("w2"),
                                                      Text("w1"),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  homeslider(),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 18,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            dark_blue_background,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    12))),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.all(
                                                                  15),
                                                          height: 100,
                                                          width: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/images/blog.png"),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Directionality(
                                                          textDirection:
                                                              TextDirection.rtl,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            10),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "11/12/2020")
                                                                    ]),
                                                              ),
                                                              SizedBox(
                                                                height: 3.0,
                                                              ),
                                                              Text(
                                                                "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              SizedBox(
                                                                height: 3.0,
                                                              ),
                                                              Text(
                                                                "مليار ريال للسنة المالية 2019",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                          padding: EdgeInsets.only(
                                                                              left:
                                                                                  5),
                                                                          child:
                                                                              Icon(Icons.access_time)),
                                                                      Text(
                                                                        "قبل 45 دقيقة",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    padding: EdgeInsets.only(
                                                                        right:
                                                                            50),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          "45",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Container(
                                                                            padding:
                                                                                EdgeInsets.only(right: 5),
                                                                            child: //Icon(Icons.messenger_outline)
                                                                                ImageIcon(AssetImage("assets/icons/streamer.png"), color: Colors.white)),
                                                                        Container(
                                                                            padding:
                                                                                EdgeInsets.only(right: 5),
                                                                            child: Icon(Icons.favorite_outline)),
                                                                        Container(
                                                                            padding:
                                                                                EdgeInsets.only(right: 5, left: 10),
                                                                            child: Icon(Icons.arrow_upward)),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              SizedBox(height: 10)
                                            ],
                                          ),
                                        );
                                      })
                                ],
                              ),
                              Container(
                                color: Colors.yellow,
                              ),
                              Container(
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
