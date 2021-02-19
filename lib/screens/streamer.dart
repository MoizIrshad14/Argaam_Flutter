import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class streamer extends StatefulWidget {
  @override
  _streamerState createState() => _streamerState();
}

class _streamerState extends State<streamer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: const WebView(
          initialUrl:
              'https://argaamv2mobileapis.argaam.com/v2.2/json/redirect-with-cookie?articleID=0&appId=0&key=&section=Streamer&langId=1',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
