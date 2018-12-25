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

  void _setCurretnIndex() {
    setState(() {
      _currentIndex++;
      if (_currentIndex >= 3) {
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
          index: _currentIndex,
          children: <Widget>[
            new Icon(
              Icons.cloud_download,
              size: 100.0,
              color: Colors.blue,
            ),
            new Icon(
              Icons.error_outline,
              size: 100.0,
              color: Colors.red,
            ),
            new Icon(
              Icons.check_circle,
              size: 100.0,
              color: Colors.green,
            ),
            new Icon(
              Icons.help,
              size: 100.0,
              color: Colors.yellowAccent,
            )
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
