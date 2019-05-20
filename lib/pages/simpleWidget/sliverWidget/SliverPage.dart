import 'package:flutter/material.dart';
import 'package:flutter_app/pages/simpleWidget/sliverWidget/SliverAppBarPage.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';

class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("基础组件"),
      ),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            MyRaisedButton(new SliverAppBarPage(), "SliverAppBarPage"),
          ],
        ),
      ),
    );
    ;
  }
}
