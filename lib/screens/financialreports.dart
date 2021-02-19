import 'package:Argaam_Flutter/constants/constants.dart';
import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:Argaam_Flutter/widgets/loadWebView.dart';
import 'package:flutter/material.dart';

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
        body: LoadWebViewURL(financialRatiosURL, context),
      ),
    );
  }
}
