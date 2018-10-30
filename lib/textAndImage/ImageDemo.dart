import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("title"),
      ),
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0.5, 0.5),
//            child: new Image.network(
//              'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
//              scale: 3.0,
//            ),
            child: new Image.asset('images/aaa.png'), //引入本地资源图片记得在yaml中导入资源，且注意空格对齐方式
          )
        ],
      ),
    );
  }
}
