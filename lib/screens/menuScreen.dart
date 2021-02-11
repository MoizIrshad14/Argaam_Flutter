import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';

class menuScreen extends StatefulWidget {
  @override
  _menuScreenState createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  List<String> listitems = [
    'ريال للسنة',
    'المالية',
    'مصرف',
    'مليار',
    ' حصري',
    'دقيقة'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Image(
        //     image: AssetImage(
        //       'assets/images/colorlogo.png',
        //     ),
        //     width: 100,
        //     height: 100,
        //   ),
        //   leading: Padding(
        //     padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        //     child: CircleAvatar(
        //       radius: 50,
        //       backgroundImage: AssetImage("assets/icons/uae_flag.png"),
        //     ),
        //   ),
        //   leadingWidth: 60.0,
        //   actions: [
        //     Padding(
        //         padding: EdgeInsets.only(right: 20.0),
        //         child: GestureDetector(
        //           onTap: () {
        //             print("search button pressed");
        //           },
        //           child: Container(
        //             height: 50,
        //             width: 50,
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: Colors.grey[200],
        //             ),
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Icon(
        //                 Icons.search,
        //                 size: 26.0,
        //                 color: Colors.grey[400],
        //               ),
        //             ),
        //           ),
        //         ))
        //   ],
        // ),
        body: Container(
          color: Colors.grey[200],
          child: ListView.builder(
              shrinkWrap: true,
          itemCount: listitems.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return _getUserHeader();
            }
            return _rowWidget(index);
          }),
        ),
      ),
    );
  }

  Widget _getUserHeader() {
    return Container(
        height: 116,
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(16, 20, 16, 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0), color: Colors.white),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("assets/images/ww.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " صافياً قدره",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " مصرف الراجحي ربحاً",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 1,
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      height: 60,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/colorlogo.png',
                          ),
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          " صافياً قدره",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "20.25",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.orange[300],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ]),
        ));
  }

  Widget _rowWidget(int index) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0), color: Colors.white),
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.orange[300],
            ),
            title: Text(
              this.listitems[index - 1],
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          )),
    );
  }
}
