import 'package:Argaam_Flutter/Utils/Utils.dart';
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:flutter/material.dart';

class InnerTab extends StatefulWidget {
  final double containerHeight;
  const InnerTab({Key key, this.containerHeight}) : super(key: key);
  @override
  _InnerTabState createState() => _InnerTabState();
}

class _InnerTabState extends State<InnerTab>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Container(width: 220, child: Tab(text: "تاسي")),
    Container(width: 220, child: Tab(text: "نامو")),
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
    double _containerheight = MediaQuery.of(context).size.height * .6;
    return Directionality(
        textDirection: getCurrentTextDirection(),
        child: Container(
            height: MediaQuery.of(context).size.height * .5,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                    child: DefaultTabController(
                  length: 2,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          child: Divider(
                            height: 1,
                            color: grey_background,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                        child: TabBar(
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            labelColor: orange_background,
                            unselectedLabelColor: grey_text,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
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
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            minimumSize: Size(350, 50),
                                            onPrimary: black_text,
                                            primary:
                                                Theme.of(context).primaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      8.0),
                                            ),
                                          ),
                                          onPressed: () {
                                            //_displaySnackBar(context);
                                          },
                                          child: Text(
                                            "الطاقة",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .dividerTheme
                                                    .color),
                                          )),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 15),
                                        height: 350,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/table.png'),
                                        )),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Text(
                                          "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق تحتوي على مقاطع لوريم إيبسوم ، ومؤخرًا مع برامج النشر المكتبي مثل تضم الإصدارات لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق تحتوي على مقاطع لوريم إ"),
                                    ),
                                  ],
                                )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            minimumSize: Size(350, 50),
                                            onPrimary: black_text,
                                            primary:
                                                Theme.of(context).primaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      8.0),
                                            ),
                                          ),
                                          onPressed: () {
                                            //_displaySnackBar(context);
                                          },
                                          child: Text(
                                            "ن القرن الم",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .dividerTheme
                                                    .color),
                                          )),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 15),
                                        height: 350,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/table.png'),
                                        )),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Text(
                                          "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل عينة كتاب. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق تحتوي على مقاطع لوريم إيبسوم ، ومؤخرًا مع برامج النشر المكتبي مثل تضم الإصدارات لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لقد كان النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه ريم إ"),
                                    )
                                  ],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            )));
  }
}
