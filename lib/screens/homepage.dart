import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:Argaam_Flutter/widgets/homeslider.dart';
import 'package:Argaam_Flutter/widgets/hometabs.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: light_blue_background,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Container(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                          color: dark_blue_background,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      //color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 180,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Last Month 2020",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("w1"),
                                      Text("w2"),
                                      Text("w3"),
                                      Text("w4"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: VerticalDivider(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 20),
                              height: 120,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Flutter",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text("76028.456",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  Text("23.6 (0.33%) ↑",
                                      style: TextStyle(fontSize: 18)),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  homeslider(),
                  SizedBox(height: 8,),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:18,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: dark_blue_background,
                                        borderRadius: BorderRadius.all(Radius.circular(12))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10),
                                              child: Row(
                                                  children: [
                                                   Text("11/12/2020")
                                                  ]
                                              ),
                                            ),
                                            Text("حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                            Text("مليار ريال للسنة المالية 2019",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets.only(left:5),
                                                        child: Icon(Icons.access_time)),
                                                    Text("قبل 45 دقيقة",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(right: 50),
                                                  child: Row(
                                                    children: [
                                                      Text("45",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                                      Container(
                                                          padding: EdgeInsets.only(right:5),
                                                          child: Icon(Icons.messenger_outline)),
                                                      Container(
                                                          padding: EdgeInsets.only(right:5),
                                                          child: Icon(Icons.favorite_outline)),
                                                      Container(
                                                          padding: EdgeInsets.only(right:5,left: 10),
                                                          child: Icon(Icons.arrow_upward)),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        height: 100,
                                        width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0),
                                            image: DecorationImage(
                                              image: AssetImage("assets/images/blog.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                              SizedBox(height: 10)
                            ],
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
