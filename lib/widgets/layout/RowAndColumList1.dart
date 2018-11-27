import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                    border:
                    new Border(bottom: new BorderSide(color: Colors.grey))),
                child: new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.chat,
                      color: Colors.lightBlueAccent,
                    ),
                    new Expanded(
                        child: new Text(
                          "消息记录",
                          textAlign: TextAlign.right,
                        ))
                  ],
                )),
            new Container(
              padding: const EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                  border:
                  new Border(bottom: new BorderSide(color: Colors.grey))),
              child: new Row(
                children: <Widget>[
                  new Icon(Icons.android,color: Colors.red,),
                  new Expanded(child: new Text("android",textAlign: TextAlign.right,))
                ],
              ),
            ),

            new Container(
                padding: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                    border:
                    new Border(bottom: new BorderSide(color: Colors.grey))),
                child: new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.chat,
                      color: Colors.lightBlueAccent,
                    ),
                    new Expanded(
                        child: new Text(
                          "消息记录",
                          textAlign: TextAlign.right,
                        ))
                  ],
                )),

          ],
        ));
  }
}

