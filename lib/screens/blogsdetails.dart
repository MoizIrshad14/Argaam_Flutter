import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:flutter/material.dart';

class blogsdetails extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(150);
  @override
  _blogsdetailsState createState() => _blogsdetailsState();
}

class _blogsdetailsState extends State<blogsdetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white_background,
          centerTitle: true,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, left: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      elevation: 0,
                      minimumSize: Size(60, 60),
                      primary: appbar_serach_background,
                    ),
                    onPressed: () {
                      // _displaySnackBar(context);
                    },
                    child: Icon(Icons.menu)),
              ),
              Divider(
                thickness: 1,
                color: grey_background,
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      elevation: 0,
                      minimumSize: Size(60, 60),
                      primary: appbar_serach_background,
                    ),
                    onPressed: () {
                      // _displaySnackBar(context);
                    },
                    child: Icon(Icons.favorite_outline)),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      elevation: 0,
                      minimumSize: Size(60, 60),
                      primary: appbar_serach_background,
                    ),
                    onPressed: () {
                      // _displaySnackBar(context);
                    },
                    child: Icon(Icons.arrow_forward_ios)),
              ),
              Container(
                  margin: EdgeInsets.only(left: 120),
                  child: Image.asset(
                    "assets/icons/appbaricon.png",
                    height: 100,
                    width: 100,
                  )),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 15),
          child: CurvedScreenContainer(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/blog.png")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: white_background),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 20),
                            child: Directionality(
                              textDirection: getCurrentTextDirection(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text(
                                      "أرجعام حصري",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange[400]),
                                    ),
                                    Text(
                                      " | 11/12/2020",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ]),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "مليار ريال للسنة المالية 2019",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                              child: Icon(
                                                Icons.access_time,
                                              )),
                                          Text(
                                            "قبل 45 دقيقة",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
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
                                            ),
                                          ),
                                          Container(
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                              child: //Icon(Icons.messenger_outline)
                                                  ImageIcon(
                                                      AssetImage(
                                                          "assets/icons/streamer.png"),
                                                      color: Colors.black)),
                                          Container(
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.favorite_outline,
                                              )),
                                          Container(
                                              padding: EdgeInsets.only(
                                                  right: 5, left: 10),
                                              child: Icon(
                                                Icons.arrow_upward,
                                              )),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Directionality(
                              textDirection: getCurrentTextDirection(),
                              child: Text(
                                  "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق تحتوي على مقاطع لوريم إيبسوم ، ومؤخرًا مع برامج النشر المكتبي مثل تضم الإصدارات لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق تحتوي على مقاطع لوريم إ"),
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
      ),
    );
  }
}
