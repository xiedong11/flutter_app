import 'package:flutter/material.dart';

//Padding控件即填充控件，能给子控件插入给定的填充。
class PaddingLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Padding布局'),
      ),
      body: new Padding(
//        padding: const EdgeInsets.only(top: 30.0),
        padding: const EdgeInsets.all(80.0),
        child: new Text('Padding控件即填充控件，能给子控件插入给定的填充'),
      ),
    );
  }
}
