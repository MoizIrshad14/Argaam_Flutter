import 'dart:ui';

import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/models/HomeArticlesResponse.dart';
import 'package:Argaam_Flutter/screens/ArticleDetail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Argaam_Flutter/models/homeblog.dart';

class homeslider extends StatelessWidget {
  List<homeblog> blogs = homeBlogs;
  HomeArticlesResponse model;
  homeslider({this.model});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        for (int i = 0; i < model.data.length; i++)
          this.getBlogHero(context, i),
        //2st Image of Slider
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 240.0,
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

  Widget getBlogHero(BuildContext context, int index) {
    //Image of Slider
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticleDetail(
                        articleId: this.model.data[index].articleID,
                      )));
        },
        child: Hero(
          tag: model.data[index].articleID,
          child: Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width,
            // margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: !model.data[index].articleImageUrl.contains("http")
                    ? AssetImage("assets/images/blog.png")
                    : NetworkImage(model.data[index].articleImageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Directionality(
              textDirection: getCurrentTextDirection(),
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 0.0),
                    child: Row(children: [
                      Text(
                        this.model.data[index].postedDate,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[400]),
                      ),
                      // Text(
                      //   "  |  ${this.blogs[index].date}",
                      //   style: TextStyle(fontSize: 15, color: white_text),
                      // )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 0.0),
                    child: SizedBox(
                        child: Text(
                      this.model.data[index].title,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: white_text),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
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
                              model.data[index].postedDate,
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
                              this.model.data[index].commentsCount.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: white_text),
                            ),
                            Container(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                                child: //Icon(Icons.messenger_outline)
                                    ImageIcon(
                                        AssetImage("assets/icons/streamer.png"),
                                        color: Colors.white)),
                            Container(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                                child: Icon(Icons.favorite_outline,
                                    color: Colors.white)),
                            Container(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                                child: Icon(Icons.arrow_upward,
                                    color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
