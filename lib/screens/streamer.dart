import 'package:Argaam_Flutter/constants/constants.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:Argaam_Flutter/widgets/loadWebView.dart';
import 'package:flutter/material.dart';

class streamer extends StatefulWidget {
  streamer({Key key}) : super(key: key);

  @override
  _streamerState createState() => _streamerState();
}

class _streamerState extends State<streamer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: LoadWebViewURL(streamerURL, context),
    );
  }
}
