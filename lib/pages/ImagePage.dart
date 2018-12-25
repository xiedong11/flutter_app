import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("ImagePage")),
        body: ListView(
          children: <Widget>[
            new Text("从网络加载图片"),
            new Image.network(
              "https://p1.ssl.qhmsg.com/dr/220__/t01d5ccfbf9d4500c75.jpg",
              width: 500,
              height: 500,
            ),
            new Text('从本地加载图片'),
            new Image.asset(
              'images/aaa.png',
              width: 500,
              height: 500,
            )
          ],
        ));
  }
}
