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
              ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                content: new Text("SanckBar is Showing "),
                action: new SnackBarAction(
                    label: "撤销",
                    onPressed: () {
                      print("点击撤回---------------");
                    }),
              ));
            },
            child: new Text("SnackBar提示"),
            // color: Colors.cyan,
            // highlightColor: Colors.lightBlueAccent,
            // disabledColor: Colors.lightBlueAccent,
          );
        }),
      ),
    );
  }
}

//const SnackBar({
//Key key,
//@required this.content,//内容
//this.backgroundColor,//背景
//this.action,//其他操作
//this.duration: _kSnackBarDisplayDuration,//显示时长
//this.animation,//进出动画
//})
