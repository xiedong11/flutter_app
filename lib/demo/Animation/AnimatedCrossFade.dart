import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyAnimatedCrossFade()));
}

/**
    AnimatedCrossFade允许一个Widget到另为一个Widget使用渐变的改变。
    与 AnimatedOpacity和AnimatedContainer不同，AnimatedCrossFade直接继承于StatefulWidget，
    构造方法必须要传入两个不同的Widget，当然你也可以指定每个widget的动画差值器。
 */
class MyAnimatedCrossFade extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State {
  bool _first = true;

  _changeOpacity() {
    setState(() => _first = _first == false ? true : false);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AnimatedOpacity"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new AnimatedCrossFade(
                firstChild: new Text("哈哈哈哈哈哈"),
                secondChild: new Icon(
                  Icons.forward,
                  size: 100.0,
                ),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 2)),
            new SizedBox(height: 30.0),
            new ElevatedButton(
              onPressed: _changeOpacity,
              child: new Text("过渡动画"),
            )
          ],
        ),
      ),
    );
  }
}
//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/
