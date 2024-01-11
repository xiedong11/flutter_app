import 'package:flutter/material.dart';

class SecondPageWithResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page2"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "Page2",
              style: new TextStyle(fontSize: 25.0),
            ),
            new ElevatedButton(
              child: new Text("点我返回"),
              onPressed: () {
                Navigator.of(context).pop("我是第二个页面返回的数据");  //页面出栈携带返回值
              },
              // color: Colors.blue,
              // highlightColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
