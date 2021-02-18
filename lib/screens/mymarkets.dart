import 'package:Argaam_Flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';

class mymarkets extends StatefulWidget {
  @override
  _mymarketsState createState() => _mymarketsState();
}

class _mymarketsState extends State<mymarkets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
      ),
    );
  }
}
