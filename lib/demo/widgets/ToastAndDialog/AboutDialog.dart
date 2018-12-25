import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar"),
      ),
      body: new Center(
        child: new Builder(builder: (BuildContext context) {
          return new RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  child: new AboutDialog(
                    applicationIcon: new Icon(Icons.android),
                    applicationName: "Flutter",
                    applicationVersion: "3.1.1",
                    children: <Widget>[new Text("更新摘要\n新增飞天遁地功能\n优化用户体验")],
                  ));
            },
            color: Colors.lightBlueAccent,
            child: new Icon(Icons.phone),
          );
        }),
      ),
    );
  }
}
