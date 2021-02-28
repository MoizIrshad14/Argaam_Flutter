import 'dart:convert';

import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/models/ArticleResponse.dart';
import 'package:Argaam_Flutter/theme/customtheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:http/http.dart' as http;

class PlatformViewVerticalGestureRecognizer
    extends VerticalDragGestureRecognizer {
  PlatformViewVerticalGestureRecognizer({PointerDeviceKind kind})
      : super(kind: kind);

  Offset _dragDistance = Offset.zero;

  @override
  void addPointer(PointerEvent event) {
    startTrackingPointer(event.pointer);
  }

  @override
  void handleEvent(PointerEvent event) {
    _dragDistance = _dragDistance + event.delta;
    if (event is PointerMoveEvent) {
      final double dy = _dragDistance.dy.abs();
      final double dx = _dragDistance.dx.abs();

      if (dy > dx && dy > kTouchSlop) {
        // vertical drag - accept
        resolve(GestureDisposition.accepted);
        _dragDistance = Offset.zero;
      } else if (dx > kTouchSlop && dx > dy) {
        // horizontal drag - stop tracking
        stopTrackingPointer(event.pointer);
        _dragDistance = Offset.zero;
      }
    }
  }

  @override
  String get debugDescription => 'horizontal drag (platform view)';

  @override
  void didStopTrackingLastPointer(int pointer) {}
}

class ArticleDetail extends StatefulWidget {
  final int articleId;
  ArticleDetail({Key key, this.articleId = 1443153}) : super(key: key);

  @override
  _ArticleDetailState createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  double _height = 100;
  bool loaded = false;
  ArticleResponse model = null;
  WebViewPlusController _controller;
  List<int> list = [1, 2, 3, 4];
  @override
  void initState() {
    super.initState();
    loadArticle();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void loadArticle() async {
    var response = await http.get(
        'https://argaamv2mobileapis.argaam.com/v2.2/json//get-article?articleid=${widget.articleId}&langId=1&isgzip=false',
        headers: {
          "DeviceToken": "asdasd",
          'isDarker': (CustomTheme.isDark()).toString(),
        });
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
                            Container(
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
                            Container(
                                child: Image.asset(
                              "assets/icons/appbaricon.png",
                              height: 100,
                              width: 100,
                            )),
                            Container(
                              margin: EdgeInsets.only(
                                top: 5,
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    elevation: 0,
                                    minimumSize: Size(60, 60),
                                    primary: Theme.of(context).primaryColor,
                                  ),
                                  onPressed: () {
                                    // _displaySnackBar(context);
                                  },
                                  child: Icon(Icons.favorite_outline)),
                            ),
                          ],
                        ))),
                Expanded(
                    flex: 9,
                    child: (loaded)
                        ? CurvedScreenContainer(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * .04,
                                  horizontal: width * .05),
                              child: ListView(
                                //crossAxisAlignment: CrossAxisAlignment.center,
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
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
                                                model.data.postedDate,
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline1,
                                              ),
                                              Text(
                                                model.data.title,
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
                                                        model.data.commentsCount
                                                            .toString(),
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
                                                  if (this._controller ==
                                                      null) {
                                                    this._controller =
                                                        controller;
                                                    controller.loadString(
                                                        model.data.articleBody);
                                                  }
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
                                                    if (height < 5000)
                                                      _height = height;
                                                    else
                                                      _height = 4500;
                                                  });
                                                },
                                                javascriptMode:
                                                    JavascriptMode.unrestricted,
                                              ),
                                            ),
                                        ],
                                      )),
                                  Container(
                                      padding: EdgeInsets.all(width * .04),
                                      margin: EdgeInsets.only(top: 20),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 14),
                                                child: Text(
                                                  'تعليقات',
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .headline4,
                                                )),
                                            for (int i = 0; i < 4; i++) ...[
                                              Container(
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 5),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          flex: 2,
                                                          child: Center(
                                                              child:
                                                                  Image.asset(
                                                            'assets/icons/comment$i.png',
                                                          ))),
                                                      Expanded(
                                                          flex: 8,
                                                          child: Container(
                                                              padding: Directionality.of(
                                                                          context) ==
                                                                      TextDirection
                                                                          .ltr
                                                                  ? EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              15)
                                                                  : EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              15),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text.rich(
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              'محمد عمير',
                                                                          style: Theme.of(context)
                                                                              .primaryTextTheme
                                                                              .headline4),
                                                                      TextSpan(
                                                                          text:
                                                                              "\t\t\t"),
                                                                      TextSpan(
                                                                        text:
                                                                            '2 ساعة',
                                                                      ),
                                                                    ],
                                                                  )),
                                                                  Text(
                                                                      'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت')
                                                                ],
                                                              ))),
                                                    ],
                                                  )),
                                              Divider(
                                                  thickness: .5,
                                                  color: Colors.black)
                                            ],
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: grey_text
                                                            .withOpacity(0.5)),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15))),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 8,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "اترك تعليقًا استخدم @ للإشارة إليه",
                                                                  hintStyle: Theme.of(
                                                                          context)
                                                                      .primaryTextTheme
                                                                      .bodyText2)
                                                              .copyWith(),
                                                        )),
                                                    Expanded(
                                                        flex: 2,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    15),
                                                            child: Image.asset(
                                                                "assets/icons/send_comment.png",
                                                                fit: BoxFit
                                                                    .contain)))
                                                  ],
                                                ))
                                          ]))
                                ],
                              ),
                            ),
                          )
                        : Center(
                            child: CircularProgressIndicator(
                            strokeWidth: 10,
                            valueColor: AlwaysStoppedAnimation(Theme.of(context)
                                .primaryTextTheme
                                .headline1
                                .color),
                          )))
              ])));
        })));
  }
}
