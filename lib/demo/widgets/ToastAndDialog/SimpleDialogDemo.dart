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
          return new ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return new SimpleDialog(
                        title: new Text("标题"),
                        contentPadding: const EdgeInsets.all(10.0),
                        children: <Widget>[
                          //SimpleDialog内可指定多个children
                          new Text("内容1"),
                          new ListTile(
                            leading: new Icon(Icons.android),
                            title: new Text("android"),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.android),
                            title: new Text("andrpid"),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.cake),
                            title: new Text("cake"),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.local_cafe),
                            title: new Text("cofe"),
                          ),
                        ],
                      );
                    });
              },
              child: new Text("Dialog出来"),
              // color: Colors.blue,
              // highlightColor: Colors.lightBlueAccent,
              // disabledColor: Colors.lightBlueAccent
          );
        }),
      ),
    );
  }
}
