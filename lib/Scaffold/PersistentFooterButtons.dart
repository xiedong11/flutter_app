import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.android),
        automaticallyImplyLeading: true,
        centerTitle: true,
        //标题居中
        elevation: 10.0,
        //底部阴影
        backgroundColor: Colors.red,
        title: new Text("title"),
      ),

      //persistentFooterButtons底部持久化显示按钮，说的是按钮，实际上你传什么Widget都是可以的，只不过作用不是很大
      persistentFooterButtons: <Widget>[
        new Icon(Icons.android),
        new Icon(Icons.book),
        new Icon(Icons.hourglass_empty),
        new Icon(Icons.headset),
        new Icon(Icons.home),
        new Text("Flutter")
      ],
    );
  }
}
