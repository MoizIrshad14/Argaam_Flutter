import 'package:flutter/material.dart';

class CurvedScreenContainer extends StatelessWidget {
  final Widget child;
  const CurvedScreenContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double BORDER_RADIUS = 20;
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        return Container(
            height: constraints.maxHeight,
            width: width,
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: EdgeInsets.only(top: 10),
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: width * .05),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(BORDER_RADIUS)),
                        ),
                      )),
                  Expanded(
                      flex: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(BORDER_RADIUS)),
                        ),
                        child: this.child,
                      ))
                ])));
      },
    ));
  }
}
