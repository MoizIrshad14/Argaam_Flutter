import 'dart:convert';

import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/models/ArticleResponse.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:http/http.dart' as http;

class ArticleDetail extends StatefulWidget {
  ArticleDetail({Key key}) : super(key: key);

  @override
  _ArticleDetailState createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  double _height = 100;
  bool loaded = false;
  ArticleResponse model = null;
  WebViewPlusController _controller;
  @override
  void initState() {
    super.initState();
    loadArticle();
  }

  void loadArticle() async {
    var response = await http.get(
        'https://argaamv2mobileapis.argaam.com/v2.2/json//get-article?articleid=1443153&langId=1&isgzip=false',
        headers: {"DeviceToken": "asdasd"});
    if (response.statusCode == 200) {
      setState(() {
        loaded = true;
        model = ArticleResponse.fromJson(jsonDecode(response.body));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
          double height = constraints.maxHeight;
          double width = constraints.maxWidth;
          double iconHeight = height * .1;
          double iconWidth = width * .11;
          double arIconWidth = width * .04;
          return Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Container(
                  child: Column(children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * .04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/icons/appbaricon.png",
                              fit: BoxFit.contain,
                              height: height * .6,
                              width: width * .25,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/BackRound.png",
                                  fit: BoxFit.contain,
                                  height: iconHeight,
                                  width: iconWidth,
                                ),
                                SizedBox(
                                  width: width * .025,
                                ),
                                Image.asset(
                                  "assets/icons/FavRound.png",
                                  fit: BoxFit.contain,
                                  height: iconHeight,
                                  width: iconWidth,
                                ),
                                SizedBox(
                                  width: width * .025,
                                ),
                                Image.asset(
                                  "assets/icons/menuRound.png",
                                  fit: BoxFit.contain,
                                  height: iconHeight,
                                  width: iconWidth,
                                ),
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    flex: 9,
                    child: CurvedScreenContainer(
                      child: SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: height * .04,
                                horizontal: width * .05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/blog.png',
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    padding: EdgeInsets.all(width * .04),
                                    margin: EdgeInsets.only(top: 20),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'أرجعام حصري | 11/02/2020',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline1,
                                            ),
                                            Text(
                                              'حقق مصرف الراجحي ربحاً صافياً قدره 10.2  مليار ريال للسنة المالية 2019',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline2,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/ar_clock.png',
                                                      fit: BoxFit.contain,
                                                      width: arIconWidth,
                                                    ),
                                                    Text(
                                                      'قبل 45 دقيقة',
                                                      style: Theme.of(context)
                                                          .primaryTextTheme
                                                          .caption,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '45',
                                                      style: Theme.of(context)
                                                          .primaryTextTheme
                                                          .caption,
                                                    ),
                                                    Image.asset(
                                                      'assets/icons/ar_comment.png',
                                                      fit: BoxFit.contain,
                                                      width: arIconWidth,
                                                    ),
                                                    Image.asset(
                                                      'assets/icons/ar_fav.png',
                                                      fit: BoxFit.contain,
                                                      width: arIconWidth,
                                                    ),
                                                    Image.asset(
                                                      'assets/icons/ar_upload.png',
                                                      fit: BoxFit.contain,
                                                      width: arIconWidth,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                        if (loaded)
                                          SizedBox(
                                            height: _height,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: WebViewPlus(
                                              onWebViewCreated: (controller) {
                                                this._controller = controller;
                                                controller.loadString(
                                                    model.data.articleBody);
                                              },
                                              onPageFinished: (url) async {
                                                String getHeightScript = r"""
                                                  getWebviewFlutterPlusHeight();
                                                  function getWebviewFlutterPlusHeight(){
                                                  var element = document.body;
                                                  var height = element.scrollHeight,
                                                      style = window.getComputedStyle(element)
                                                  return ['top', 'bottom'] 
                                                      .map(function (side) {
                                                          return parseInt(style["margin-" + side]);
                                                      })
                                                      .reduce(function (total, side) {
                                                          return total + side;
                                                      }, height)}""";
                                                double height = double.parse(
                                                    await _controller
                                                        .evaluateJavascript(
                                                            getHeightScript));

                                                print("Height:  " +
                                                    height.toString());
                                                setState(() {
                                                  _height = height;
                                                });
                                              },
                                              javascriptMode:
                                                  JavascriptMode.unrestricted,
                                            ),
                                          )
                                      ],
                                    ))
                              ],
                            )),
                      ),
                    ))
              ])));
        })));
  }
}
