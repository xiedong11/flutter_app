import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp("标题")));
}

class MyApp extends StatefulWidget {
  MyApp(this.title);

//  MyHomePage({Key key, this.title}) : super(key: key);  //构造方法的第二种写法

  String title;

  @override
  _MyHomePageState createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyApp> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(fontSize: 10.0 + _count),
        ),
      ),
      body: new Center(
//        child: new Text('$_count')),  字符串也可以使用占位符的方式
        child: new Text(_count.toString()),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        child: new Icon(Icons.add),
      ),
    );
  }
}
