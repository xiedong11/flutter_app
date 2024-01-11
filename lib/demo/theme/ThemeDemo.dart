import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'd',
      home: new MyApp(),
      theme: new ThemeData(primaryColor: Colors.red),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//        leading: new IconButton(
//            icon: new Icon(Icons.ac_unit), tooltip: "dfsaf", onPressed: null),
        title: new Text("title"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.title), tooltip: "fsdafsa", onPressed: null)
        ],
      ),
      drawer: new Drawer(
        child: new Center(
          child: new Text("我是菜单"),
        ),
      ),
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0.5, 0.5),
            child: new MyButton(),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("test.widgets.button is click ...");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(15.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text(
            'Flutter',
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
