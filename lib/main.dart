import 'package:flutter/material.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';
import 'package:flutter_app/pages/TextPage.dart';
import 'package:flutter_app/pages/TextFieldPage.dart';
import 'package:flutter_app/pages/ImagePage.dart';
import 'package:flutter_app/pages/LayoutPage.dart';
import 'package:flutter_app/pages/GestureDetectorPage.dart';
import 'package:flutter_app/pages/ToastAndDialogPage.dart';
import 'package:flutter_app/pages/navigator/NavigatorPage.dart';
import 'package:flutter_app/pages/ButtonPage.dart';

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
        child: new ListView(
          children: <Widget>[
            MyRaisedButton(new TextPage(), "Text组件"),
            MyRaisedButton(new TextFieldPage(), "TextField组件"),
            MyRaisedButton(new ImagePage(), "Image组件"),
            MyRaisedButton(new LayoutPage(), "layout布局"),
            MyRaisedButton(new GestureDetectorPage(), "GestureDetector"),
            MyRaisedButton(new NavigatorPage(), "Navigator页面跳转"),
            MyRaisedButton(new ToastAndDialogPage(), "ToastAndDialogPage"),
            MyRaisedButton(new ButtonPage(), "Button 控件"),
          ],
        ),
      ),
    );
  }
}
