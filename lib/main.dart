import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new PullToRefreshDemo()));
}

class PullToRefreshDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemLoading(),
    );
  }
}

/**
 * ListView加载更多底部视图
 */
class ItemLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: new Align(
          alignment: new FractionalOffset(0.5, 0.5),
          child: new Row(
            children: <Widget>[
              new Expanded(child: Center(child: new CircularProgressIndicator(),)),
              new Expanded(child: new Text("加载中...")),

            ],
          ),
        ),
      ),
      color: Colors.white70,
    );
  }
}

//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/
