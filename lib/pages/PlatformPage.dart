import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaltformPage extends StatelessWidget {
  static const platform = const MethodChannel("com.zhuandian.flutter/android");

  void _goAndroidPage() async {
    await platform.invokeMethod("new_page");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("交互原生"),
      ),
      body: new Center(
          child: new MaterialButton(
        onPressed: () {
          _goAndroidPage();
        },
        child: new Text("调到原生页面"),
      )),
    );
  }
}
