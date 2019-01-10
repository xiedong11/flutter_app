import 'package:flutter/material.dart';
import 'package:flutter_app/demo/widgets/view/MyView.dart';
import 'package:flutter_app/demo/widgets/view/MyView2.dart';
import 'package:flutter_app/demo/widgets/view/MyView3.dart';

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
          child: new MyView3(),
        ));
  }
}
