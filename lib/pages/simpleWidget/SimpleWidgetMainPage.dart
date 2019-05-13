import 'package:flutter/material.dart';
import 'package:flutter_app/pages/simpleWidget/ScaffoldPage.dart';
import 'package:flutter_app/pages/simpleWidget/SliverAppBarPage.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';
import 'package:flutter_app/pages/simpleWidget/TextPage.dart';
import 'package:flutter_app/pages/simpleWidget/TextFieldPage.dart';
import 'package:flutter_app/pages/simpleWidget/ImagePage.dart';
import 'package:flutter_app/pages/simpleWidget/LayoutPage.dart';
import 'package:flutter_app/pages/simpleWidget/GestureDetectorPage.dart';
import 'package:flutter_app/pages/simpleWidget/ToastAndDialogPage.dart';
import 'package:flutter_app/pages/simpleWidget/navigator/NavigatorPage.dart';
import 'package:flutter_app/pages/simpleWidget/ButtonPage.dart';
import 'package:flutter_app/pages/simpleWidget/IndexAndChosePage.dart';
import 'package:flutter_app/pages/simpleWidget/PlatformPage.dart';

void main() {
  runApp(new MaterialApp(home: new SimpleWidgetMainPage()));
}

class SimpleWidgetMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("基础组件"),
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
            MyRaisedButton(new IndexAndChosePage(), "IndexAndChose 控件"),
            MyRaisedButton(new ScaffoldPage(), "Scaffold 脚手架"),
            MyRaisedButton(new SliverAppBarPage(), "SliverAppBar 可折叠标题栏"),
            MyRaisedButton(new PaltformPage(), "交互原生"),
          ],
        ),
      ),
    );
  }
}
