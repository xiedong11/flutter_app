import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyAnimatedContainer()));
}

/**
 * AnimatedContainer看名字不难知道它是Container的动画版本，使用AnimatedContainer就不需要再创建Animation了。

    AnimatedContainer继承于ImplicitlyAnimatedWidget，相应的我们需要传入动画的播放时间（必须填写）和插值器类型（有默认值）

    然后，我们就可以让AnimatedContainer根据我们的值来做动画效果并且作用到相应的属性上。


 */
class MyAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State {
  double animValue = 100.0;

  _changeValue() {
    setState(() => animValue = animValue == 0 ? 100.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("AnimatedContainer"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new AnimatedContainer(
            curve: Curves.bounceOut,  //插值器类型
            duration: new Duration(seconds: 2),
            child: new FlutterLogo(
              size: 100.0,
            ),
            padding: EdgeInsets.only(bottom: animValue),
          ),
          SizedBox(
            height: 30.0,
          ),
          new RaisedButton(
            child: new Text('GO'),
            onPressed: _changeValue,
          ),
        ],
      ),
    );
  }
}
//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/
