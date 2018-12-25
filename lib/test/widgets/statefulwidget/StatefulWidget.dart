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
  int _currentIndex = 0;
  List<IconData> _icons = [
    Icons.cloud_download,
    Icons.android,
    Icons.ac_unit,
    Icons.dashboard,
    Icons.dehaze
  ];

  void _setCurretnIndex() {
    setState(() {
      _currentIndex++;
      if (_currentIndex >= 5) {
        _currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
//        child: new Text('$_count')),  字符串也可以使用占位符的方式
        child: IndexedStack(
          index: 0,
          children: <Widget>[
            new Icon(
              _icons[_currentIndex],
              size: 40.0 * _currentIndex,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _setCurretnIndex,
        child: new Icon(Icons.add),
      ),
    );
  }
}
