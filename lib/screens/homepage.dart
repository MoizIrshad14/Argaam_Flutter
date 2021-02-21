import 'dart:convert';

import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/models/HomeArticlesResponse.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:Argaam_Flutter/widgets/innertab.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:Argaam_Flutter/widgets/homeslider.dart';
import 'package:Argaam_Flutter/widgets/hometabs.dart';
import 'package:Argaam_Flutter/widgets/listdetail.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:Argaam_Flutter/screens/blogsdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ArticleDetail.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  HomeArticlesResponse _model;
  bool _loaded = false;
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
    fetchData();
    //_containerheight = MediaQuery.of(context).size.height;
  }

  void fetchData() async {
    var headers = {
      'Version': '3.4.4',
      'DeviceID': '',
      'DeviceToken':
          '9A3177ED5E44EA2EE5AD14739AD857807BF9483660476D6294BCE6385F7D6101',
      'CurrentUserId': '0',
      'UserID': '',
      'LangID': '1',
      'OffSet': '300',
      'isDarker': 'false',
      'Content-Type': 'application/json'
    };
    var body =
        '''{\r\n    "param":{\r\n        "pageNo":1,\r\n        "pageSize":30\r\n    }\r\n}''';
    var response = await http.post(
        Uri.parse(
            'https://argaamv2mobileapis.argaam.com/v2.2/json/article-listing/Market-News-Saudi'),
        body: body,
        headers: headers);
    if (response.statusCode == 200) {
      HomeArticlesResponse model =
          HomeArticlesResponse.fromJson(jsonDecode(response.body));
      model.data = model.data
          .where((D) =>
              (D.articleImageUrl != null && D.articleImageUrl.trim() != ""))
          .toList();
      setState(() {
        _model = model;
        _loaded = true;
      });
    }
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
          child: CurvedScreenContainer(
            child: Container(
              child: Directionality(
                textDirection: getCurrentTextDirection(),
                child: DefaultTabController(
                  length: 3,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        child: TabBar(
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            CustomScrollView(
                              slivers: [
                                SliverToBoxAdapter(
                                  child: Column(
                                    children: [
                                      //market rates
                                      this.getMarketRate(),
                                      //blogs
                                      if (_loaded && _model.data != null)
                                        Container(
                                            child: homeslider(
                                          model: _model,
                                        ))
                                      else
                                        SizedBox(
                                            height: 100,
                                            width: 300,
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                strokeWidth: 10,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Theme.of(context)
                                                            .primaryTextTheme
                                                            .headline1
                                                            .color),
                                              ),
                                            )),
                                      //list
                                      if (_loaded && _model.data != null)
                                        Container(
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                primary: false,
                                                scrollDirection: Axis.vertical,
                                                itemCount: _model.data.length,
                                                itemBuilder: (context, index) {
                                                  return this.getArticle(
                                                      _model.data[index]);
                                                })),

                                      Container(
                                        height: 300,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // ListView(
                            //   children: [
                            //     this.getMarketRate(),
                            //     InkWell(
                            //         onTap: () {
                            //           Navigator.push(
                            //               context,
                            //               MaterialPageRoute(
                            //                   builder: (context) =>
                            //                       blogsdetails()));
                            //         },
                            //         child: Container(child: homeslider())),
                            //     SizedBox(
                            //       height: 8,
                            //     ),
                            //     ListView.builder(
                            //         physics: NeverScrollableScrollPhysics(),
                            //         shrinkWrap: true,
                            //         primary: false,
                            //         itemCount: 5,
                            //         itemBuilder: (context, index) {
                            //           return this.getArticle(index);
                            //         })
                            //   ],
                            // ),
                            // // financialreport(),
                            // CustomScrollView(
                            //   slivers: [
                            //     SliverToBoxAdapter(
                            //       child: Container(
                            //         height: _containerheight,
                            //         child: InnerTab(
                            //           containerHeight: _containerheight,
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
                            InnerTab(
                              containerHeight: _containerheight,
                            ),
                            InnerTab(
                              containerHeight: _containerheight,
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
        ),
      ),
    );
  }

  Widget getMarketRate() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Container(
          height: 110,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 120,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("طاسي",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("7,862.23",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      Text("23.64 (0.33%) ↑",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.green[400])),
                    ],
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: VerticalDivider(
                    width: 1, color: Theme.of(context).dividerTheme.color),
              ),
              Container(
                height: 120,
                width: 180,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("اًموي03رخآ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
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
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          )),
    );
  }

  Widget getArticle(Data data) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticleDetail(
                        articleId: data.articleID,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(data.articleImageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Directionality(
                          textDirection: getCurrentTextDirection(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(children: [Text(data.postedDate)]),
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .55,
                                  child: Text(
                                    data.title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )),
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
                                        data.postedDate,
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
                                          data.commentsCount.toString(),
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
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 10)
            ],
          ),
        ));
  }
}
