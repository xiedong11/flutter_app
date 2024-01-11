import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new PlatFormDemo()));
}

class PlatFormDemo extends StatelessWidget {
  static const platform = const MethodChannel("com.zhuandian.flutter/android");
  showToast(String msg) async {
    try {
      await platform.invokeMethod("showToast",{"msg":msg});
    } on PlatformException catch (e) {
      print(e.toString());
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("platformChannels"),),body:  Center(
      child: ElevatedButton(
        child: Text("点我提示"),
        onPressed: () {
          showToast("我是android系统的toast");
        },
      ),
    ),);
  }
}
//http://flutter.link/2018/04/20/Flutter%E8%B0%83%E7%94%A8%E5%B9%B3%E5%8F%B0%E4%BB%A3%E7%A0%81/
