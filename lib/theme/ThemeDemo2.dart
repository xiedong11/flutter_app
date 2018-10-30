import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home:new MyApp(),theme:
  new ThemeData(primaryColor: Colors.red,accentColor: Colors.redAccent, ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar:
    new AppBar(title: new Text("Hello Flutter")),
        floatingActionButton: new FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blueAccent,
            child: new Text("点我",style: new TextStyle(color: Colors.white),)
        ),
        endDrawer: new Drawer(child: new Center(child: new Text("我是菜单"),),),
        body: new Center(
            child: new Text("Hello Flutter")
        )
    );
  }
}