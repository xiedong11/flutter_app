import 'package:flutter/material.dart';
import 'package:flutter_app/pages/base/common_widget.dart';

class CallBackSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("方法回调2"),
        centerTitle: true,
      ),
      body: CommonWidget(Center(
        child: Text("dddd"),
      )).onClick(onTap: () {
        print("------------click-------");
      }, onLongPress: () {
        print("long click---------------");
      }).build(),
    );
  }
}

class MyText extends Text {
  MyText(String data) : super(data, style: TextStyle(color: Colors.redAccent));
}
