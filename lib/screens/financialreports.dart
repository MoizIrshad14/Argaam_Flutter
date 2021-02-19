import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class financialreport extends StatefulWidget {
  @override
  _financialreportState createState() => _financialreportState();
}

class _financialreportState extends State<financialreport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: const WebView(
          initialUrl:
              'https://argaamv2mobileapis.argaam.com/v2.2/json/redirect-with-cookie?articleID=0&appId=0&key=&section=FinancialRatios&langId=1',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
