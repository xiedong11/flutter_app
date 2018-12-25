import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyAnimatedOpacity()));
}

/**
 * 改变透明度的动画Widget，可以child根据设置的时间和动画范围改变透明度

    同样的AnimatedOpacity也继承于ImplicitlyAnimatedWidget，需要填入Curve和Duration参数。
 */
class MyAnimatedOpacity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State {
  var _opacityLevel=0.0;

  _changeOpacityLevel() {
    setState(() {
      _opacityLevel = _opacityLevel == 0 ? 1.0 : 0.0;
    });
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
            new AnimatedOpacity(
              opacity: _opacityLevel,
              duration: Duration(seconds: 3),
              child: new FlutterLogo(
                size: 100.0,
              ),
              curve: Curves.linear,
            ),
            new SizedBox(height: 30.0),
            new RaisedButton(
              onPressed: _changeOpacityLevel,
              child: new Text("改变透明度"),
            )
          ],
        ),
      ),
    );
  }
}
//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/
