import 'package:flutter/material.dart';
import 'package:flutter_app/pages/TextPage.dart';
import 'package:flutter_app/pages/TextFieldPage.dart';
import 'package:flutter_app/pages/ImagePage.dart';
import 'package:flutter_app/pages/LayoutPage.dart';

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
            RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new TextPage()));
                },
                child: Text("Text组件")),
            RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new TextFieldPage()));
                },
                child: Text("TextField组件")),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ImagePage()));
              },
              child: Text("Image组件"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new LayoutPage()));
              },
              child: new Text("layout布局"),
            )
          ],
        ),
      ),
    );
  }
}
