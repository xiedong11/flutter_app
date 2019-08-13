import 'package:flutter/material.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';
import 'package:flutter_app/pages/simpleWidget/SimpleWidgetMainPage.dart';
import 'package:flutter_app/pages/storage/StoragePage.dart';
import 'package:flutter_app/view/custom_view_page.dart';

void main() {
  runApp(new MaterialApp(home: new FlutterDemo()));
}

class FlutterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter进阶之旅"),
      ),
      body: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyRaisedButton(new SimpleWidgetMainPage(), "基础Widget部分"),
            MyRaisedButton(new StoragePage(), "数据存储"),
            MyRaisedButton(new CustomViewPage(), "自定义View"),
          ],
        ),
      ),
    );
  }
}
