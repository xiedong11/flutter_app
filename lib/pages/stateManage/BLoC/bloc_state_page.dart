import 'package:flutter/material.dart';

class BLoCStatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<BLoCStatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC状态管理"),
        centerTitle: true,
      ),
    );
  }
}
