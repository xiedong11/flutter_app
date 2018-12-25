import 'package:flutter/material.dart';
import 'package:flutter_app/pages/TextPage.dart';
import 'package:flutter_app/pages/TextFieldPage.dart';
import 'package:flutter_app/pages/ImagePage.dart';
import 'package:flutter_app/pages/LayoutPage.dart';
import 'package:flutter_app/pages/GestureDetectorPage.dart';
import 'package:flutter_app/pages/ToastAndDialogPage.dart';
import 'package:flutter_app/pages/navigator/NavigatorPage.dart';

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
          ],
        ),
      ),
    );
  }
}

/**
 * 定义自带路由跳转button
 */
class MyRaisedButton extends StatelessWidget {
  var _shapeBorder = new RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)));
  var _textStyle = new TextStyle(color: Colors.white, fontSize: 16.0);
  var _btnTitle;
  var _pageNavigator;

  MyRaisedButton(this._pageNavigator, this._btnTitle);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        //第一种写法
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => _pageNavigator));
        //第二张路由写法
//        Navigator.of(context)
//            .push(new MaterialPageRoute(builder: (context) => _pageNavigator));
      },
      child: Text(
        _btnTitle,
        style: _textStyle,
      ),
      color: Colors.lightGreen,
      highlightColor: Colors.green,
      shape: _shapeBorder,
    );
  }
}
