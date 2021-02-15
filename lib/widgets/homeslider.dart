import 'dart:ui';

import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Hero(
          tag: "Blogs",
          child: Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/blog.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Directionality(
              textDirection: getCurrentTextDirection(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55.0),
                    child: Row(children: [
                      Text(
                        "أرجعام حصري",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[400]),
                      ),
                      Text(
                        " | 11/12/2020",
                        style: TextStyle(fontSize: 15, color: white_text),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white_text),
                  ),
                  Text(
                    "مليار ريال للسنة المالية 2019",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white_text),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.access_time,
                                color: white_background,
                              )),
                          Text(
                            "قبل 45 دقيقة",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: white_text),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "45",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white_text),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: ImageIcon(
                                  AssetImage("assets/icons/streamer.png"),
                                  color: Colors.white)),
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(Icons.favorite_outline,
                                  color: Colors.white)),
                          Container(
                              padding: EdgeInsets.only(right: 5, left: 10),
                              child: Icon(Icons.arrow_upward,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        //2st Image of Slider
        Hero(
          tag: "Blogs",
          child: Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/blog.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Directionality(
              textDirection: getCurrentTextDirection(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55.0),
                    child: Row(children: [
                      Text(
                        "أرجعام حصري",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[400]),
                      ),
                      Text(
                        " | 11/12/2020",
                        style: TextStyle(fontSize: 15, color: white_text),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white_text),
                  ),
                  Text(
                    "مليار ريال للسنة المالية 2019",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white_text),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.access_time,
                                color: white_background,
                              )),
                          Text(
                            "قبل 45 دقيقة",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: white_text),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "45",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white_text),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: //Icon(Icons.messenger_outline)
                                  ImageIcon(
                                      AssetImage("assets/icons/streamer.png"),
                                      color: Colors.white)),
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(Icons.favorite_outline,
                                  color: Colors.white)),
                          Container(
                              padding: EdgeInsets.only(right: 5, left: 10),
                              child: Icon(Icons.arrow_upward,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        //3st Image of Slider
        Hero(
          tag: "Blogs",
          child: Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/blog.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Directionality(
              textDirection: getCurrentTextDirection(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55.0),
                    child: Row(children: [
                      Text(
                        "أرجعام حصري",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[400]),
                      ),
                      Text(
                        " | 11/12/2020",
                        style: TextStyle(fontSize: 15, color: white_text),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white_text),
                  ),
                  Text(
                    "مليار ريال للسنة المالية 2019",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white_text),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.access_time,
                                color: white_background,
                              )),
                          Text(
                            "قبل 45 دقيقة",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: white_text),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "45",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: white_text),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: //Icon(Icons.messenger_outline)
                                  ImageIcon(
                                      AssetImage("assets/icons/streamer.png"),
                                      color: Colors.white)),
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(Icons.favorite_outline,
                                  color: Colors.white)),
                          Container(
                              padding: EdgeInsets.only(right: 5, left: 10),
                              child: Icon(Icons.arrow_upward,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 225.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
