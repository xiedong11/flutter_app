import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new LinearProgressIndicatorDemo()));
}

class LinearProgressIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyProgressIndicatorState();
}

class MyProgressIndicatorState extends State<LinearProgressIndicatorDemo> {
  double _currentIndex = 0.1;

  /**
   * 更新进度条当前值
   */
  void changeCurrentIdex() {
    setState(() {
      _currentIndex += 0.1;
      if (_currentIndex >= 1.0) {
        _currentIndex = 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("条形进度条"),
        ),
        body: new Column(
          children: <Widget>[
            new LinearProgressIndicator(
              backgroundColor: Colors.white,
              value: _currentIndex, //(在不指定value的情况下，进度条一直滚动)
            ),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new ElevatedButton(
                onPressed: changeCurrentIdex,
                child: new Text("改变进度"),
              ),
            )
          ],
        ));
  }
}

//const LinearProgressIndicator({
//Key key,
//double value,//当前进度0-1之间  (在不指定value的情况下，进度条一直滚动)
//Color backgroundColor,//背景颜色
//test.Animation<Color> valueColor,//选中颜色，需要用到动画的知识，以后讲
//})
