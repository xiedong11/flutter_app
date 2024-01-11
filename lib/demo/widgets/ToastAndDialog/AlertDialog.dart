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
                  builder:(context){
                    return new AlertDialog(
                      title: new Text("标题"),
                      content: new Text("内容区域"),
                      actions: <Widget>[
                        new TextButton(
                            onPressed: () {
                              Navigator.of(context);
                            },
                            child: new Text("确定")),
                        new TextButton(
                            onPressed: () {
                              print("点击取消------");
                            },
                            child: new Text("取消")),
                      ],
                    );
                  } );
            },
            // color: Colors.lightBlueAccent,
            child: new Icon(Icons.phone),
          );
        }),
      ),
    );
  }
}
