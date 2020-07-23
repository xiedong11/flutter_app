import 'package:flutter/material.dart';
import 'package:flutter_app/pages/platform/android_platform_page.dart';
import 'package:flutter_app/pages/platform/calc_plugin_page.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';

class PlatformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("平台交互"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MyRaisedButton(AndroidPlatformPage(), "直接插件调用平台代码"),
          MyRaisedButton(CalcPluginPage(), "利用插件调用平台代码"),
        ],
      ),
    );
  }
}
