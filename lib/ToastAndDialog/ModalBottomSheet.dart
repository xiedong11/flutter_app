import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}
//showModalBottomSheet与BottomSheet的区别是 BottomSheet充满屏幕，ModalBottomSheet半屏
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
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return new Container(
                      child: new Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: <Widget>[
                            new ListTile(
                              leading: new Icon(Icons.chat),
                              title: new Text("开始会话"),
                            ),
                            new ListTile(
                              leading: new Icon(Icons.help),
                              title: new Text("操作说明"),
                            ),
                            new ListTile(
                              leading: new Icon(Icons.settings),
                              title: new Text("系统设置"),
                            ),
                            new ListTile(
                              leading: new Icon(Icons.more),
                              title: new Text("更多设置"),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: new Text("BottomSheet"),
          );
        }),
      ),
    );
  }
}
