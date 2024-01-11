
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '导航',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new MyHomePage(
        title: "导航页",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text('点击浮动按钮打开新的页面'),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.amberAccent,
        onPressed: _openNewPage,
        child: new Icon(Icons.ac_unit),
      ),
    );
  }

  void _openNewPage() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('新的页面'),
              ),
              body: new Center(
                child: new Text("点击按钮返回首页"),
              ),
              floatingActionButton: new FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Icon(Icons.accessible),
              ),

            );
          }
      ));
    });
  }
}
